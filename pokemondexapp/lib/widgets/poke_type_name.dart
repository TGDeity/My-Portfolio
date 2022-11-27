import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Model/pokemon_model.dart';
import '../constantvariables/static_constant_variables.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNameType({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? '',
                  style: ConstantVariables.getPokemonNameTextStyle(),
                ),
              ),
              Text(
                '#${pokemon.num}',
                style: ConstantVariables.getPokemonNameTextStyle(),
              ),
            ],
          ),
          Chip(
            label: Text(
              pokemon.type?.join(' , ') ?? 'Deger yok',
              style: ConstantVariables.getPokemonNameTextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
