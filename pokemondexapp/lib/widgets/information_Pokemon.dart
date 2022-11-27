import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Model/pokemon_model.dart';
import '../constantvariables/static_constant_variables.dart';
import '../constantvariables/ui_helper.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemonModel;
  const PokeInformation({Key? key, required this.pokemonModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.w)),
      ),
      child: Padding(
        padding: UiHelper.getPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildInformationRow('isim', pokemonModel.name),
            _buildInformationRow('Yükselik', pokemonModel.height),
            _buildInformationRow('Agırlık', pokemonModel.weight),
            _buildInformationRow('Dogum süresi', pokemonModel.spawnTime),
            _buildInformationRow('Zayıflık', pokemonModel.weaknesses),
            _buildInformationRow('Zayıf Hali', pokemonModel.prevEvolution),
            _buildInformationRow('Gelismis Hali', pokemonModel.nextEvolution)
          ],
        ),
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: ConstantVariables.getPokeInfoLabelTextStyle(),
        ),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(' , '),
          )
        else if (value == null)
          Text('Bilgi yok.', style: ConstantVariables.getPokeInfoTextStyle())
        else
          Text(value),
      ],
    );
  }
}
