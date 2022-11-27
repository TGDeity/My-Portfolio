// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


import '../Model/pokemon_model.dart';
import '../constantvariables/ui_helper.dart';

//cached_network_image kütüphanesini kullanıyoruz ki internetten fotoğraf getirdiğimizde o fotoğrafları tekrar tekrar getirmesin gerektiğinde kullansın.
class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;

  String pokeBallImageUrl = 'images/pokeball.png';
  PokeImageAndBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeBallImageUrl,
            width: UiHelper.calculatePokeImageAndBallSize(),
            height: UiHelper.calculatePokeImageAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
            errorWidget: (context, url, error) => const Icon(Icons.ac_unit),
            placeholder: (context, url) => CircularProgressIndicator(
                color: UiHelper.getColorFromType(pokemon.type![
                    0])), //internetten veri gelene kadar ne yapayım ?? hareketli gif falan verebiliriz.
            imageUrl: pokemon.img ?? '',
            width: UiHelper.calculatePokeImageAndBallSize(),
            height: UiHelper.calculatePokeImageAndBallSize(),
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}
