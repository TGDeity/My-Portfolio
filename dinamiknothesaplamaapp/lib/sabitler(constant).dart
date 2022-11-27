import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sabitler {
  static const anaRenk = Colors.indigo;
  static const baslikText = 'Ortalama Hesapla';
  static final TextStyle baslikStyle = GoogleFonts.quicksand(
      fontSize: 24, fontWeight: FontWeight.w900, color: anaRenk);

  static final BorderRadius borderRadius = BorderRadius.circular(24);

  static final TextStyle ortalamaGosterBodyStyle = GoogleFonts.quicksand(
      fontSize: 16, fontWeight: FontWeight.w600, color: anaRenk);

  static final TextStyle dersOrtalamaSayisiStyle = GoogleFonts.quicksand(
      fontSize: 40, fontWeight: FontWeight.w800, color: anaRenk);

  static const EdgeInsets dropDownPadding =
      EdgeInsets.symmetric(horizontal: 8, vertical: 16);
}
