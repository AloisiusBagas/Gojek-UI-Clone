import 'package:cloning_gojekapp/Screen/Home/homepage.dart';
import 'package:cloning_gojekapp/theme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appTheme() ,
    home: Home(),
  ));
}


