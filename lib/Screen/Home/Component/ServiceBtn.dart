import 'package:flutter/material.dart';

class ServiceMenu extends StatelessWidget {
  const ServiceMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          // left: 16,
          // right: 16,
          top: 18,
        ),
        decoration: BoxDecoration(color: Colors.white),
        child: Align(
          alignment: AlignmentDirectional.topCenter,
          child: Wrap(
            spacing: 35,
            runSpacing: 20,
            children: <Widget>[
              ServiceBtn(
                imgpath: "assets/images/go-ride.png",
                text: "GO-RIDE",
                press: () {},
              ),
              ServiceBtn(
                imgpath: "assets/images/go-car.png",
                text: "GO-CAR",
                press: () {},
              ),
              ServiceBtn(
                imgpath: "assets/images/go-bluebird.png",
                text: "BLUEBIRD",
                press: () {},
              ),
              ServiceBtn(
                imgpath: "assets/images/go-food.png",
                text: "GO-FOOD",
                press: () {},
              ),
              ServiceBtn(
                imgpath: "assets/images/go-send.png",
                text: "GO-SEND",
                press: () {},
              ),
              ServiceBtn(
                imgpath: "assets/images/go-deals.png",
                text: "GO-DEALS",
                press: () {},
              ),
              ServiceBtn(
                imgpath: "assets/images/go-pulsa.png",
                text: "GO-PULSA",
                press: () {},
              ),
                                  ServiceBtn(
                imgpath: "assets/images/lainnya.png",
                text: "Lainnya",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceBtn extends StatelessWidget {
  final String imgpath;
  final String text;
  final Function press;
  const ServiceBtn({
    Key key,
    this.imgpath,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: press,
          child: Container(
            width: 49,
            height: 49,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey[100], width: 1.5),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Image.asset(
              imgpath,
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
