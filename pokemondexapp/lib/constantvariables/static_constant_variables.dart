import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConstantVariables {
  ConstantVariables._();
  //!Kurucu Metodumuzu gizli yapıyoruz ve yeni nesne üretilmesini engelliyoruz.

  static const String title = 'Pokedex Tolga';

  static const String pokeballImageUrl = 'images/pokeb.png';

  static TextStyle getTitleTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(40));
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(18));
  }

  static TextStyle getPokemonTypeChipNameTextStyle() {
    return TextStyle(color: Colors.white, fontSize: _calculateFontSize(10));
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size
          .sp; //yazı boyutunu büyüten portrait modda metod. telefon ayarlarından yazı boyutunu büyüttüğümüz zaman sp metodu  o değeri kapar ve ona göre büyüklük ayarlar.
    } else {
      return (size).sp;
    }
  }

  static getPokeInfoTextStyle() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return TextStyle(
        fontSize: _calculateFontSize(16),
        color: Colors.black,
      );
    } else {
      return TextStyle(
        fontSize: _calculateFontSize(7),
        color: Colors.black,
      );
    }
  }

  static getPokeInfoLabelTextStyle() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return TextStyle(
          fontSize: _calculateFontSize(22),
          color: Colors.black,
          fontWeight: FontWeight.bold);
    } else {
      return TextStyle(
          fontSize: _calculateFontSize(10),
          color: Colors.black,
          fontWeight: FontWeight.bold);
    }
  }
}
