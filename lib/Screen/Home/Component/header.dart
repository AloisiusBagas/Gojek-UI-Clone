import 'package:cloning_gojekapp/Screen/Home/Component/GopayService.dart';
import 'package:cloning_gojekapp/Screen/Home/Component/ServiceBtn.dart';
import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: EdgeInsets.only(top: 17, left: 17, right: 17),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          GopayService(),
          ServiceMenu()
        ],
      ),
    );
  }
}

