import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Model/pokemon_model.dart';
import '../constantvariables/static_constant_variables.dart';
import '../constantvariables/ui_helper.dart';
import '../widgets/information_Pokemon.dart';
import '../widgets/poke_type_name.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;

  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtil().orientation == Orientation.portrait
        ? _buildlandspaceBody(context)
        : _buildPortraitBody(context);
  }

  Scaffold _buildPortraitBody(BuildContext context) {
    return Scaffold(
      backgroundColor: UiHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: ScreenUtil().orientation == Orientation.portrait
                  ? EdgeInsets.all(0.75.h)
                  : EdgeInsets.all(0.15.w),
              child: IconButton(
                iconSize: 18.w,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        PokeNameType(pokemon: pokemon),
                        Hero(
                          tag: pokemon.id!,
                          child: CachedNetworkImage(
                            imageUrl: pokemon.img ?? '',
                            height: 0.25.sw,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: PokeInformation(pokemonModel: pokemon),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Scaffold _buildlandspaceBody(BuildContext context) {
    return Scaffold(
      backgroundColor: UiHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: ScreenUtil().orientation == Orientation.portrait
                  ? EdgeInsets.all(0.75.h)
                  : EdgeInsets.all(0.15.w),
              child: IconButton(
                iconSize: 18.w,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            PokeNameType(pokemon: pokemon),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                      ConstantVariables.pokeballImageUrl,
                      fit: BoxFit.fitHeight,
                      width: 0.15.sh,
                      height: 0.15.sw,
                    ),
                    right: 0,
                    top: 50,
                    height: 0.15.sh,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: 0.20.sh,
                    child: PokeInformation(pokemonModel: pokemon),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: pokemon.id!,
                      child: CachedNetworkImage(
                        imageUrl: pokemon.img ?? '',
                        height: 0.25.sh,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
