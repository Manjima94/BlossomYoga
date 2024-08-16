// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(radius: 40,backgroundImage:NetworkImage('https://img.freepik.com/free-photo/portrait-blonde-woman-looking-photographer_23-2148348970.jpg') ),
                Icon(
                  Icons.edit,
                  color: Color.fromARGB(255, 206, 150, 216),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 10),
              child: Text(
                'Manjima',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Text(
              'Manjima@gmail.com',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  fontSize: 16),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 200, 160, 216),
                  ),Text(
                '     Favourites',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
                ],
              ),
            ), Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 200, 160, 216),
                  ),Text(
                '     Settings',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
                ],
              ),
            ), Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Icon(
                    Icons.help,
                    color: Color.fromARGB(255, 200, 160, 216),
                  ),Text(
                '     Help',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
                ],
              ),
            ), Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Icon(
                    Icons.directions_run_rounded,
                    color: Color.fromARGB(255, 200, 160, 216),
                  ),Text(
                '     Logout',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
              ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
