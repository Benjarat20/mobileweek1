import 'package:flutter/material.dart';

import '../config/constant.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: -60,
              left: -75,
              child: Image.asset(
            "asset/image/orange.png",
            width: size.width * 0.35,
            ),
             ),
             Positioned(
              bottom: -60,
              left: -50,
              child: Image.asset(
            "asset/image/cyan.png",
            width: size.width * 0.35,
            ),
             ),

             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "asset/image/logo.png",
              width: size.width * 0.35,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome to KMUTNB",
              style: TextStyle(
                color:pColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              "asset/image/tech.jpg",
              width: size.width * 0.7,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: sColor,
                padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                // padding: EdgeInsets.all(20),
                shape: StadiumBorder(),
              ),
              child: Text(
                "SIGN IN",
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () {
                print("Complete");
                Navigator.pushNamed(context, 'Login');
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: sColor,
                padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                shape: StadiumBorder(),
              ),
              child: Text(
                "SIGN UP",
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () {
                print("Hello Worlds");
                   Navigator.pushNamed(context, 'Register');
             },
            ),
              ],
            ),
          ]),
      ),
    );
  }
}