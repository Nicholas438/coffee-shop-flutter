// ignore_for_file: prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_const_constructors

import 'package:coffee_shop/pages/home.dart';
import 'package:coffee_shop/pages/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Sora',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Stack(children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height * 2 / 3),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/coffee.png"),
                ),
              ),
            ),
            Positioned(
                top: (MediaQuery.of(context).size.height * 10 / 18),
                left: 30,
                right: 30,
                child: Column(
                  children: [
                    Text(
                      "Coffee so good, your taste buds will love it.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'The best grain, the finest roast, the powerful flavor.',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        letterSpacing: 1,
                        color: Color(0xFFBDBCBC),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ))
          ])),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                }),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Color(0xFFC67C4E)),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(20)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                child: Text("Get Started",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16)),
              )),
          ElevatedButton(
              onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TestPage();
                }));
              }),
              child: Text("Test")),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    )));
  }
}
