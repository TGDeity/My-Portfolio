import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  String secilensehir = '-';
  LocationWidget({Key? key, required this.secilensehir}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      secilensehir,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}
