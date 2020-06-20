import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

  
  AppBar appbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      title: SvgPicture.asset("assets/icons/NewGojekLogo.svg",height: 20.5,),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:15.0,bottom: 15.0),
          child: Container(
            margin: EdgeInsets.only(right:20),
            height: 23.0,
            width: 85.0,
            decoration: BoxDecoration(
              color: Color(0xFFFEF8ED),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                    width: 23,
                    height: 23,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFFA100)
                    ),
                    child: FaIcon(FontAwesomeIcons.trophy,size: 10,),
                  ),
                  SizedBox(width:6),
                Text("605 pts",style: TextStyle(fontFamily: "Neo Sans Arabic Medium",color: Colors.black,fontSize: 11),)
              ],
            ),
          ),
        )
      ],
    );
  }