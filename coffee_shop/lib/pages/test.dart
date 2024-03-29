import 'package:flutter/material.dart';
import 'package:coffee_shop/data/coffee.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String? location;
  String? search;

  void onFilterButtonPressed() {
    print("search button clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF9F9F9),
        body: Column(
          children: <Widget>[
            SizedBox(
                height: 344,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: (280),
                      color: Colors.black,
                    ),
                    Positioned(
                        top: 40,
                        left: MediaQuery.of(context).size.width * 1 / 15,
                        right: MediaQuery.of(context).size.width * 1 / 15,
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
                                          height: 20,
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton(
                                              isExpanded: true,
                                              dropdownColor: Colors.black,
                                              value: location,
                                              hint: const Text(
                                                "Select location",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
                                              ),
                                              iconEnabledColor: Colors.white,
                                              icon: const Icon(
                                                Icons.expand_more,
                                                color: Colors.white,
                                                size: 14,
                                              ),
                                              items: const <DropdownMenuItem<
                                                  String>>[
                                                DropdownMenuItem<String>(
                                                  value:
                                                      'Blitzen, Tanjungbalai',
                                                  child: Text(
                                                    "Blitzen, Tanjungbalai",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                DropdownMenuItem<String>(
                                                  value: 'Nu Yok, Amrik',
                                                  child: Text(
                                                    "Nu Yok, Amrik",
                                                    style: TextStyle(
                                                        color: Colors.white),
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
                                          image: AssetImage(
                                              "assets/images/profile.png"),
                                          fit: BoxFit.fill)),
                                ),
                              ],
                            ),
                            Container(
                              height: 20,
                            ),
                            Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xFF313131),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                width:
                                    MediaQuery.of(context).size.width * 4 / 5,
                                height: 52,
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1 /
                                                20),
                                    Icon(
                                      Icons.search,
                                      color: Colors.white,
                                      size: MediaQuery.of(context).size.width *
                                          1 /
                                          16,
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1 /
                                                20),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          53 /
                                          100,
                                      child: TextField(
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 16),
                                        decoration:
                                            const InputDecoration.collapsed(
                                          hintText: "Search Coffee",
                                          hintStyle: TextStyle(
                                            fontSize: 14.0,
                                            color: Color(0xFF989898),
                                          ),
                                        ),
                                        onChanged: (String value) {
                                          setState(() {
                                            search = value;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1 /
                                                20),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1 /
                                                9,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                1 /
                                                9,
                                        child: FittedBox(
                                            child: FloatingActionButton(
                                          backgroundColor:
                                              const Color(0xFFC67C4E),
                                          onPressed: () {
                                            onFilterButtonPressed();
                                          },
                                          child: Icon(
                                            Icons.tune_outlined,
                                            color: Colors.white,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1 /
                                                13,
                                          ),
                                        )))
                                  ],
                                )),
                            const SizedBox(height: 24),
                            Stack(children: <Widget>[
                              Container(
                                height: 140,
                                width:
                                    MediaQuery.of(context).size.width * 21 / 25,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/promo.png"),
                                        fit: BoxFit.fill)),
                              ),
                              Stack(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          22, 13, 0, 0),
                                      child: Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(6)),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4, horizontal: 6),
                                          child: const Text(
                                            "Promo",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ))),
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          22, 62, 0, 0),
                                      child: Container(
                                          width: 200,
                                          color: Colors.black,
                                          height: 27)),
                                  const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(22, 46, 0, 0),
                                      child: Text("Buy One Get",
                                          style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white))),
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          22, 100, 0, 0),
                                      child: Container(
                                          width: 150,
                                          color: Colors.black,
                                          height: 27)),
                                  const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(22, 84, 0, 0),
                                      child: Text("one FREE",
                                          style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white)))
                                ],
                              )
                            ]),
                          ],
                        ))
                  ],
                )),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 1 / 15),
                child: SizedBox(
                    height: 38,
                    child: Expanded(
                        child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xFFC67C4E),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Text("Cappuccino",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.white))),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 1 / 30),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Text("Machiato",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.black))),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 1 / 30),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Text("Latte",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.black))),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 1 / 30),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Text("Americano",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Colors.black))),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 1 / 30),
                      ],
                    )))),
            Expanded(
                child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // number of items in each row
                mainAxisSpacing: 8.0, // spacing between rows
                crossAxisSpacing: 8.0, // spacing between columns
                childAspectRatio: (0.6),
              ),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,

              padding: EdgeInsets.all(MediaQuery.of(context).size.width *
                  1 /
                  15), // padding around the grid
              itemCount: CoffeeList.length,
              itemBuilder: (context, index) {
                Coffee cof = CoffeeList[index];
                return SizedBox(
                    height: 250,
                    child: Card(
                        margin: const EdgeInsets.all(4),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 4),
                                  child: Stack(children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          47 /
                                          125,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              47 /
                                              125,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage((cof.imageAsset)),
                                              fit: BoxFit.fill)),
                                    ),
                                    Container(
                                      width: 60,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.20),
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              bottomRight:
                                                  Radius.circular(16))),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 5),
                                        child: Icon(
                                          Icons.star_rounded,
                                          color: Colors.yellow,
                                          size: 20,
                                        )),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 28, vertical: 5),
                                        child: Text(cof.star.toString(),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)))
                                  ])),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 12, left: 12),
                                  child: Text(cof.type,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ))),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 4, left: 12, right: 12),
                                  child: Text("with " + cof.ingredient,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF9B9B9B),
                                      ))),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, left: 12, right: 12),
                                child: Text("\$ " + cof.price.toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF2F4B4E),
                                    )),
                              ),
                            ])));
              },
            )),
          ],
        ));
  }
}
