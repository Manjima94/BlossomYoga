// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yoga_app/onboard2.dart';

class Onboard1 extends StatefulWidget {
  const Onboard1({super.key});

  @override
  State<Onboard1> createState() => _Onboard1State();
}

class _Onboard1State extends State<Onboard1> {
  bool level = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                height: height/2.5,
                width: width / 1.5,
                image: AssetImage('images/yoga.jpg'),
                fit: BoxFit.contain,
              ),
              Text(
                'What is your Level ?',
                style: TextStyle(fontSize: 27,  fontFamily: 'Poppins', fontWeight: FontWeight.w500),
              ),
              Text(
                'Let us know you better',
                style: TextStyle(fontSize: 15,  fontFamily: 'Poppins', fontWeight: FontWeight.normal),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: height / 15,
                  width: width / 1.2,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          level = !level;
                        });
                      },
                      child: Text(
                        'Beginner',
                        style: TextStyle(  fontFamily: 'Poppins',
                          color: level ? Colors.black : Colors.deepPurple,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: height / 15,
                  width: width / 1.2,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Intermediate',
                      style: TextStyle(  fontFamily: 'Poppins',fontSize: 20,),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: height / 15,
                  width: width / 1.2,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Advanced',
                      style: TextStyle(  fontFamily: 'Poppins',fontSize: 20,),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0, bottom: 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.deepPurple[200]),
                    fixedSize: MaterialStatePropertyAll(Size(width / 1.2, height / 16)),
                  ),
                  onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Onboard2(),
                  ));},
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(  fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
