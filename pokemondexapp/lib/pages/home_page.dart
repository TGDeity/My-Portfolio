// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';


import '../widgets/appBar_title.dart';
import '../widgets/pokemonListWidget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: ((context, orientation) {
          return Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const AppTitle(),
              // ignore: prefer_const_constructors
              Expanded(child: PokemonList()),
            ],
          );
        }),
      ),
    );
  }
}
