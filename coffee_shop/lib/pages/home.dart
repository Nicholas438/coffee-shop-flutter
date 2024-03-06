import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? location = 'Blitzen, Tanjungbalai';
  String? search;

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
                              SizedBox(
                                  width: 200,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      alignment: Alignment.bottomLeft,
                                      dropdownColor: Colors.black,
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
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'Pais, Pancis',
                                          child: Text(
                                            "Pais, Pancis",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                      value: location,
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
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: (MediaQuery.of(context).size.height * 1 / 16),
                        decoration: BoxDecoration(
                            color: const Color(0xFF313131),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Row(
                          children: <Widget>[
                            SizedBox(width: 16),
                            Icon(Icons.search, color: Colors.white),
                            SizedBox(width: 8),
                            TextField(
                              decoration: InputDecoration(),
                            )
                          ],
                        )),
                  ],
                ))
          ],
        ),
      ],
    ));
  }
}
