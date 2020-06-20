import 'package:cloning_gojekapp/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GofoodMenu extends StatelessWidget {
  const GofoodMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset("assets/icons/GofoodLogo.svg"),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Pilihan Terlaris",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 13),
                ),
                Text(
                  "Lihat Semua",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 11, color: GreenColor),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 142,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ImageScroll(imgpath: "assets/images/MieAyam.jpg", text: "Mie Ayam",),
                ImageScroll(imgpath: "assets/images/NasiGoreng.jpg", text: "Nasi Goreng",),
                ImageScroll(imgpath: "assets/images/Kwetiausapi.jpg", text: "Kwetiau Goreng",),
                ImageScroll(imgpath: "assets/images/Bihun.jpg", text: "Bihun Goreng",),
                ImageScroll(imgpath: "assets/images/Pempek.jpg", text: "Pempek Palembang",),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ImageScroll extends StatelessWidget {
  final String imgpath;
  final text;
  const ImageScroll({
    Key key, this.imgpath, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:14),
      child: Column(
        children: <Widget>[
          Container(
            width: 123,
            height: 123,
            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgpath),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(height:6),
          Text(text,style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 11),)
        ],
      ),
    );
  }
}
