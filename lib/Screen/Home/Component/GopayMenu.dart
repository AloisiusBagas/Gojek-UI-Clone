import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GopayMenu extends StatelessWidget {
  const GopayMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SvgPicture.asset(
                "assets/icons/gopaylogo.svg",
                height: 15,
              ),
              SizedBox(height: 8),
              Text(
                "Your nearest Alfamart - 58 m away",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 13),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 11),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/indomaret.jpeg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Top Up at a Store Near You",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 12),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          "Jl. Bekasi Timur Raya Rt. 008, Rw.09, Cipinang Besar Utara, Jatinegara,Jakarta Timur",
                          style: TextStyle(fontSize: 11, height: 1.5),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 67,
              height: 32,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Color(0xFF27A626)),
              child: Text(
                "TOP UP",
                style: Theme.of(context).textTheme.bodyText1.copyWith(color:Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
