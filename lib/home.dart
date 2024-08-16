// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yoga_app/video.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 150,
        backgroundColor: Color.fromARGB(255, 200, 160, 216),
        leading: Icon(
          Icons.menu_rounded,
          color: Colors.white,
          size: 35,
        ),
        title: Text(
          'Welcome !',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300,
              fontSize: 30),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.tune_outlined,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              'New',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Stack(children: [
                    Container(
                      height: height / 4.5,
                      width: width / 1.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(
                                'https://cdn.cdnparenting.com/articles/2019/01/25141047/515885956-H-1024x700.webp')),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 200, 160, 216),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Video(),
                              ));
                        },
                        child: Container(
                          height: height / 22,
                          width: width / 1.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            color: Color.fromARGB(255, 200, 160, 216),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Healthy back',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                Icon(
                                  (Icons.favorite_border_rounded),
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Stack(children: [
                    Container(
                      height: height / 4.5,
                      width: width / 1.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(
                                'https://images.healthshots.com/healthshots/en/uploads/2023/11/09130436/cat-cow-pose.jpg')),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 200, 160, 216),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      child: Container(
                        height: height / 22,
                        width: width / 1.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Color.fromARGB(255, 200, 160, 216),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Frozen shoulders',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              Icon(
                                (Icons.favorite_border_rounded),
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              'Popoular',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Stack(children: [
                    Container(
                      height: height / 4.5,
                      width: width / 1.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSq8Mkyg5BEoi6vvrIFdVt_FpKCir-VGWG2bLspr5qCXA60h9_YBvjJK9gEdtryDg_Gck&usqp=CAU')),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 200, 160, 216),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      child: Container(
                        height: height / 22,
                        width: width / 1.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Color.fromARGB(255, 200, 160, 216),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Morning yoga',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              Icon(
                                (Icons.favorite_border_rounded),
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Stack(children: [
                    Container(
                      height: height / 4.5,
                      width: width / 1.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(
                                'https://images.healthshots.com/healthshots/en/uploads/2023/11/09130436/cat-cow-pose.jpg')),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 200, 160, 216),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      child: Container(
                        height: height / 22,
                        width: width / 1.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Color.fromARGB(255, 200, 160, 216),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Frozen shoulders',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              Icon(
                                (Icons.favorite_border_rounded),
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
