import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yoga_app/login.dart';
import 'package:yoga_app/onborad1.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:90.0),
        child: Column(children: [
          Image.asset('images/yoga.jpg'),
          Text('BlossomYoga',
              style: TextStyle(
                fontFamily: 'Rosarivo',
                fontSize: 35,
                color: Color.fromARGB(255, 206, 137, 218),
                fontWeight: FontWeight.bold,
              ))
        ]),
      ),
    );
  }
}
