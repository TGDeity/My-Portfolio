import 'package:burcrehberiapp/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;

  const BurcDetay({required Burc this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  //değişecek olan yapılar
  Color appBarRengi = Colors.transparent;

  late PaletteGenerator _generator;

//değişkenlerimizin ilk atamalarını yaparken kurucu constructkter gibi bir defa çalışır statesfulwidgetin bu kısmı
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appbarRenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            backgroundColor: appBarRengi,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                'images/' + widget.secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenBurc.burcDetayi,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void appbarRenginiBul() async {
    //_generator =await PaletteGenerator.fromImage(Image.asset('images/'+widget.secilenBurc.burcBuyukResim));
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/' + widget.secilenBurc.burcBuyukResim));
    //statlesfull'ün içerisinde bir değer olmadığı için secilenBurc buna erişmek için widget.secilenBurc yapısını kullanıyoruz

    setState(() {
      appBarRengi = _generator.vibrantColor!.color;
    });
  }
}
