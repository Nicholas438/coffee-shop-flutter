import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String selectval = "United Kingdom";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height * 2 / 5),
              color: Colors.black,
            ),
            Positioned(
                top: 40,
                left: 30,
                right: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 12,
                                letterSpacing: 1,
                                color: Color(0xFFB7B7B7),
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Row(children: <Widget>[
                              Text(
                                "Bilzen, Tanjungbalai",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.expand_more,
                                color: Colors.white,
                                size: 14,
                              )
                            ])
                          ],
                        ),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/profile.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ],
    ));
  }
}
