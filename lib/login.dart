// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yoga_app/onborad1.dart';
import 'package:yoga_app/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: width / 1.5,
              image: AssetImage('images/yoga.jpg'),
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: height / 15,
              width: width / 1.2,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Color.fromARGB(255, 171, 138, 227),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: height / 15,
                width: width / 1.2,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 171, 138, 227),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200.0, top: 10),
              child: Text('Forgot Password ?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 20),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.deepPurple[200]),
                      fixedSize: MaterialStatePropertyAll(
                          Size(width / 1.2, height / 16))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Onboard1(),
                        ));
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            TextButton(
              child: Text(' Dont have an account ? SIGNUP',
                  style: TextStyle(
                    fontFamily: 'Poppins',fontSize: 16
                  )),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup(),
                    ));
              },
            ),
            Text('or connect with',
                style: TextStyle(
                  fontFamily: 'Poppins',
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.facebook,
                      size: 35,
                      color: Color.fromARGB(255, 153, 131, 194),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.g_mobiledata,
                      size: 40,
                      color: Color.fromARGB(255, 153, 131, 194),
                    )),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
