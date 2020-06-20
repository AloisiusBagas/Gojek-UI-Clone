import 'package:cloning_gojekapp/Constant.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  TextTheme basetextTheme(TextTheme base) {
    return base.copyWith(
        bodyText1: base.bodyText1.copyWith(
            fontFamily: 'Neo Sans Arabic Medium',
            fontSize: 10.0,
            color: Colors.black));
  }
final ThemeData base = ThemeData.light();
return base.copyWith(
  textTheme: basetextTheme(base.textTheme),
  tabBarTheme: base.tabBarTheme.copyWith(
    labelColor: GreenColor,
    unselectedLabelColor: IconColor, 
  ),
  //accentColor: Colors.transparent
);
}
