import 'package:dinamiknothesaplamaapp/helper/datalib.dart';
import 'package:dinamiknothesaplamaapp/sabitler(constant).dart';
import 'package:flutter/material.dart';

class DersListesi extends StatelessWidget {
  //callback fonksiyon  haberleşmesi için  bu widget'A bir değişken verdik.
  final Function onElemanCikarildi; //!FOKNİSYONUMUZ.

  const DersListesi({required this.onElemanCikarildi, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataHelper.tumEklenenDersler.length > 0
        ? ListView.builder(
            itemCount: DataHelper.tumEklenenDersler.length,
            itemBuilder: ((context, index) {
              return Dismissible(
                //!dismissible ile yok etme işlemi yapıyoruz.
                key: UniqueKey(),
                //!listemize eklenen her bir elemana birbirinden farklı keyler veriyorki sabit bir key verirsek eğer hepsinin değeri öyle olur ve hepsi kaybolur

                onDismissed: (a) {
                  onElemanCikarildi(index);

                  /*  DataHelper.tumEklenenDersler.removeAt(index);
                  !elemanları silmek için removeat'in o an ki indexini sildiriyoruz.

                  / setState(() {});
          
                  ////!SetState ediyoruz ki. ilgili widgetimiz yani şuan ki widgetimizin contexti birdaha çalışssın bizim contextimizin altında DataHelper.tumEklenenDersler[index].krediDegeri değeri bulunduğu için ve içi boş olduğu için hata vermeden iş yaptı SetState bizim ilgili widgetimizi güncellediği için ortalama değeri değişmiyor bunuda aşağıda ki widgetten yukarıya veri yollamamız lazım Callback fonksiyonunu kullanırız bende bir veri güncellendi git bunu güncelle diyoruz. fakat daha kolay yapmak adına bu DersListesini StatelessWidget'a dönüştürüyorum*/
                },

                direction: DismissDirection.startToEnd,
                //!direction ile başlangıçtan sona yani sağa akaydırarak sil diyoruz.

                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Card(
                    child: ListTile(
                      title: Text(DataHelper.tumEklenenDersler[index].ad),
                      leading: CircleAvatar(
                        backgroundColor: Sabitler.anaRenk,
                        child: Text(
                          (DataHelper.tumEklenenDersler[index].harfDegeri *
                                  DataHelper
                                      .tumEklenenDersler[index].krediDegeri)
                              .toStringAsFixed(0),
                          //!kaç tane değer gözükmesini istediğimiz kadar  sağlayabiliriz asFixed ile
                        ),
                      ),
                      subtitle: Text(
                          '     Kredi değeri: ${(DataHelper.tumEklenenDersler[index].krediDegeri).toInt()}         Not Değeri: ${DataHelper.tumEklenenDersler[index].harfDegeri} '),
                    ),
                  ),
                ),
              );
            }),
          )
        : SizedBox(
            child: Center(
                child: Text(
              'Lütfen ders ekleyin.',
              style: Sabitler.baslikStyle,
            )),
          );
  }
}
