import 'package:cloning_gojekapp/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GopayService extends StatelessWidget {
  const GopayService({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: 95,
        width: double.infinity,
        decoration: BoxDecoration(
          color: DarkBlue,
        ),
        child: Column(
          children: <Widget>[
            Gopay(),
            Headerbutton(),
          ],
        ),
      ),
    );
  }
}

class Gopay extends StatelessWidget {
  const Gopay({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, bottom: 8, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/gopaylogo.svg",
            height: 15,
            color: Colors.white,
          ),
          Text("Rp8.350",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white, fontSize: 12))
        ],
      ),
    );
  }
}

class Headerbutton extends StatelessWidget {
  const Headerbutton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: LightBlue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ButtonHeader(
              imgpath: "assets/images/pay.png",
              text: "Bayar",
            ),
            ButtonHeader(
              imgpath: "assets/images/nearby.png",
              text: "Nearby",
            ),
            ButtonHeader(
              imgpath: "assets/images/topup.png",
              text: "Isi Saldo",
            ),
            ButtonHeader(
              imgpath: "assets/images/more.png",
              text: "Lainnya",
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonHeader extends StatelessWidget {
  final String imgpath;
  final String text;
  const ButtonHeader({
    Key key,
    this.imgpath,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          imgpath,
          height: 25,
          width: 25,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: Colors.white),
        )
      ],
    );
  }
}