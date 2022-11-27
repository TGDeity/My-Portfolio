// ignore_for_file: prefer_const_constructors

import 'package:dinamiknothesaplamaapp/ders_listesi.dart';
import 'package:dinamiknothesaplamaapp/helper/datalib.dart';
import 'package:dinamiknothesaplamaapp/model/ders.dart';
import 'package:flutter/material.dart';
import 'ortalama_goster_wiget.dart';
import 'sabitler(constant).dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPage();
}

class _OrtalamaHesaplaPage extends State<OrtalamaHesaplaPage> {
  final _globalFormKey = GlobalKey<FormState>(debugLabel: 's');
  double secilenHarfdegeri = 4;
  double secilenKrediDegeri = 1;
  String girilenDersAdi = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset:
            false, // yan ekranda resizeToAvoidten kalvye çıkınca ekran bozulmasını engelleme.
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              Sabitler.baslikText,
              style: Sabitler.baslikStyle,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: _buildForm(),
                ),
                Expanded(
                  flex: 1,
                  child: OrtalamaGoster(
                    dersSayisi: DataHelper.tumEklenenDersler.length,
                    ortalama: DataHelper.ortalamaHesapla(),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: DersListesi(onElemanCikarildi: (index) {
                DataHelper.tumEklenenDersler.removeAt(index);
                setState(() {});
              }),
            ),
            //liste
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
        key: _globalFormKey,
        child: Column(
          children: [
            _buildTextFormField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: _buildHarfler(),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: _buildKrediler(),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      if (_globalFormKey.currentState!.validate()) {
                        _globalFormKey.currentState!.save();
                        // ignore: todo
                        //TODO: globalFormkeyimizin currentstateini save ediyoruz ki textFormFieldin içinden değeri alsın. aksi taktirde ders adı boş gelir. bu save metodu onSaved metodunu çalıştırır.

                        var eklenecekDers = Ders(
                            ad: girilenDersAdi,
                            harfDegeri: secilenHarfdegeri,
                            krediDegeri: secilenKrediDegeri);
                        DataHelper.dersEkle(eklenecekDers);
                        setState(() {});
                      }
                    },
                    icon: const Icon(Icons.keyboard_double_arrow_right_sharp),
                    color: Sabitler.anaRenk,
                    iconSize: 30,
                  ),
                )
              ],
            ),
            SizedBox(height: 5),
          ],
        ));
  }

  _buildTextFormField() {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 25, bottom: 0, top: 0),
      child: TextFormField(
        onSaved: (newValue) {
          setState(() {
            girilenDersAdi = newValue!;
          });
        },
        validator: (e) {
          if (e!.isEmpty) {
            return 'Ders adını giriniz';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: 'Matematik',
          border: OutlineInputBorder(
              borderRadius: Sabitler.borderRadius,
              borderSide: BorderSide
                  .none), //border side none ile yanlarında ki çizgileri kaldırdık.
          filled: true,
          fillColor: Sabitler.anaRenk.shade100.withOpacity(0.2),
        ),
      ),
    );
  }

  _buildHarfler() {
    return Padding(
      padding: Sabitler.dropDownPadding,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Sabitler.anaRenk.shade100.withOpacity(0.3),
            borderRadius: Sabitler.borderRadius),
        child: DropdownButton<double>(
          elevation: 16,
          alignment: Alignment.topRight,
          iconEnabledColor: Sabitler.anaRenk.shade200,
          underline: SizedBox(),
          items: DataHelper.tumDerslerinHarfleriii(),
          value: secilenHarfdegeri,
          onChanged: (value) {
            setState(
              () {
                secilenHarfdegeri = value!;
              },
            );
          },
        ),
      ),
    );
  }

  _buildKrediler() {
    return Padding(
      padding: Sabitler.dropDownPadding,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Sabitler.anaRenk.shade100.withOpacity(0.3),
            borderRadius: Sabitler.borderRadius),
        child: DropdownButton<double>(
          elevation: 16,
          iconEnabledColor: Sabitler.anaRenk.shade200,
          underline: SizedBox(),
          alignment: Alignment.topRight,
          items: DataHelper.tumDerslerinKredileri(),
          value: secilenKrediDegeri,
          onChanged: (value) {
            setState(
              () {
                secilenKrediDegeri = value!;
              },
            );
          },
        ),
      ),
    );
  }
}
