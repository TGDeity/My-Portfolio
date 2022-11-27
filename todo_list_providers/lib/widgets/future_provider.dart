import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/cat_fact_model.dart';


final httpDioClientProvider = Provider(((ref) {
  return Dio(BaseOptions(baseUrl: 'https://catfact.ninja/'));
  //tek bir api kullanacaksak baseUrl verebiliriz. o halde diodan çağırırken uç uca ekleme kullanılır  final result = await dio.get('facts');
}));

final catGerceklerProvider = FutureProvider.autoDispose
    .family<List<CatFactModel>, Map<String, dynamic>>(
        ((ref, parametreMapi) async {
  ref.keepAlive();
  //!autoDispose eğer bu veri kullanılmayacaksa otomatik dispose eder. istiyorsak kullanabiliriz autoDispose kullanıyorsak keepAlive() fonksiyonunu kullanabiliriz keepAlive() dispose edilmesini önler yani farklı bir sayfaya girdik çıktık anasayfada apiden veri çekiliyor ve ikinci sayfa normalse tekrar anasayfaya dönersek bilgiler internetten tekrar tekrar çekilmez.
  //!family  <List<CatFactModel>, int> (ref, limitDegeri) {} gibi  jenerik yapısı kullanılır biz burada map yapısı kullanıyoruz FutureProvider önüne family parametresi girildikten sonra Providerimiz parametre alablir duruma gelir
  final dio = ref.watch(httpDioClientProvider);

  final result = await dio.get('facts', queryParameters: {
    'limit': parametreMapi['limit'],
    'max_length': parametreMapi['max_length']
  });

  List<Map<String, dynamic>> mapData = List.from(result.data['data']);
  //!genellikle dio kütüphanesi ile çalışırken List<Map<Strnig,dynamic> gibi veri türünü belirtmemize rağmen mapdata= result.data['data']'ya eşit olsa dahi hata döndürecektir o yüzden List.from()  fonksiyonunun içine alıyoruz ki bana gerçekten bir liste döndür ver diyoruz çünkü result.data dynamic yapı döndürüyor.

  List<CatFactModel> catFactList =
      mapData.map((e) => CatFactModel.fromMap(e)).toList();
  return catFactList;
}));

class FutureProviderExample extends ConsumerWidget {
  const FutureProviderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var catFatListesi = ref.watch(catGerceklerProvider(const {
      //!api kaynağımızdaki isimleri birebir geçiyoruz
      //!çok önemli bilgi buradaki alınan veriler flutter tekrar tekrar çalıştırabilir buda yeni bir istek demektir bunun önüne geçebilmek için const ekleriz yada immutable yaparız eklemezsek program crash atar.
      'limit': 6,
      'max_lenght': 30
    }));

    return Scaffold(
      body: SafeArea(
          //!AsyncValue Olduğu için when fonksiyonu ile dağıtım sağladık data'ya data hata fırlatırsa alacağı işi ve dataların yüklenirken alacağı aksiyonu belirttik.
          child: catFatListesi.when(data: (listeData) {
        return ListView.builder(
          itemCount: listeData.length,
          itemBuilder: ((context, indexx) {
            return ListTile(
              title: Text(listeData[indexx].fact),
            );
          }),
        );
      }, error: (error, stack) {
        return Center(child: Text('hata çıktı ${error.toString()}'));
      }, loading: () {
        return const Center(child: CircularProgressIndicator());
      })),
    );
  }
}
