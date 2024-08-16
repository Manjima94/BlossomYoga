// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yoga_app/fav.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          'Favorites',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 30),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 200, 160, 216),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        height: height / 14,
                        'images/yoga2.png',
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'Easy pose',
                        style: TextStyle(
                            color: Color.fromARGB(255, 168, 103, 176),
                            fontFamily: 'Poppins',
                            fontSize: 25),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Fav(),
                                ));
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 168, 103, 176),
                          ))
                    ]),
              ),
              Divider(
                endIndent: 40,
                indent: 20,
                color: Colors.purple,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        height: height / 10,
                        'images/yoga3.png',
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'Halasana',
                        style: TextStyle(
                            color: Color.fromARGB(255, 168, 103, 176),
                            fontFamily: 'Poppins',
                            fontSize: 25),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 168, 103, 176),
                          ))
                    ]),
              ),
              Divider(
                endIndent: 40,
                indent: 20,
                color: Colors.purple,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        height: height / 11,
                        'images/yoga4.png',
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'Bhujangasana',
                        style: TextStyle(
                            color: Color.fromARGB(255, 168, 103, 176),
                            fontFamily: 'Poppins',
                            fontSize: 23),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 168, 103, 176),
                          ))
                    ]),
              ),
              Divider(
                endIndent: 40,
                indent: 20,
                color: Colors.purple,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        height: height / 10,
                        'images/yoga5.png',
                        fit: BoxFit.contain,
                      ),
                      Text(
                        ' Virabhadrasana',
                        style: TextStyle(
                            color: Color.fromARGB(255, 168, 103, 176),
                            fontFamily: 'Poppins',
                            fontSize: 20),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 168, 103, 176),
                          ))
                    ]),
              ),
              Divider(
                endIndent: 40,
                indent: 20,
                color: Colors.purple,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        height: height / 10,
                        'images/yoga6.png',
                        fit: BoxFit.contain,
                      ),
                      Text(
                        'Vrakasasana',
                        style: TextStyle(
                            color: Color.fromARGB(255, 168, 103, 176),
                            fontFamily: 'Poppins',
                            fontSize: 25),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 168, 103, 176),
                          ))
                    ]),
              ),
              Divider(
                endIndent: 40,
                indent: 20,
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
