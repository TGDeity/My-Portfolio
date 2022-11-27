// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constantvariables/static_constant_variables.dart';
import '../constantvariables/ui_helper.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UiHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              ConstantVariables.title,
              style: ConstantVariables.getTitleTextStyle(),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(ConstantVariables.pokeballImageUrl,
                width: ScreenUtil().orientation == Orientation.portrait
                    ? 0.15.sh
                    : 0.15.sw,
                fit: BoxFit.fitWidth),
          ),
        ],
      ),
    );
  }
}
