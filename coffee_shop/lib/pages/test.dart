import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String? location;

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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 12,
                                letterSpacing: 1,
                                color: Color(0xFFB7B7B7),
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Row(children: <Widget>[
                              Container(
                                  width: 200,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      dropdownColor: Colors.black12,
                                      value: location,
                                      hint: const Text(
                                        "Select location",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      iconEnabledColor: Colors.white,
                                      icon: const Icon(
                                        Icons.expand_more,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      items: const <DropdownMenuItem<String>>[
                                        DropdownMenuItem<String>(
                                          value: 'Blitzen, Tanjungbalai',
                                          child: Text(
                                            "Blitzen, Tanjungbalai",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'Nu Yok, Amrik',
                                          child: Text(
                                            "Nu Yok, Amrik",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                      onChanged: (value) {
                                        setState(() {
                                          location = value;
                                        });
                                      },
                                    ),
                                  )),
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
