import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Model/pokemon_model.dart';
import '../constantvariables/static_constant_variables.dart';
import '../constantvariables/ui_helper.dart';
import '../pages/detail_pages.dart';
import 'pokeImage_andBall.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeListItem({required this.pokemon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(pokemon: pokemon)));
      }),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UiHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name ?? 'N/A',
                style: ConstantVariables.getPokemonNameTextStyle(),
              ),
              Chip(
                label: Text(
                  pokemon.type![0],
                  style: ConstantVariables.getPokemonTypeChipNameTextStyle(),
                ),
              ),
              Expanded(
                  child: Hero(
                      tag: pokemon.id!,
                      child: PokeImageAndBall(pokemon: pokemon))),
            ],
          ),
        ),
      ),
    );
  }
}
