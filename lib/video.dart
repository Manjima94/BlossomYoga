import 'package:flutter/material.dart';
import 'package:yoga_app/timer.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Stack(children: [
              Center(
                child: Container(
                  height: height / 4.5,
                  width: width / 1.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                        'https://cdn.cdnparenting.com/articles/2019/01/25141047/515885956-H-1024x700.webp',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ]),
            Text(
              'Healthy back',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                  "Arrange suppotive padding (blanked, block, or bolster) under your sit bones so your hips will be higher then knees when you come into the poseCome to sit on your padding in a comfortable cross-legged position. Shift the flesh of your butt to each side with your hands so that your sit bones have a firm foundationYour hands can rest in your lap or on the tops of your thighs. Tum your palms up to be receptive or down to feel grounded"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 20),
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.deepPurple[200]),
                      fixedSize: MaterialStatePropertyAll(
                          Size(width / 2.5, height / 18))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Timerr(),
                        ));
                  },
                  child: Text(
                    'Start',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w300),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
