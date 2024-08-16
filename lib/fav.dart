import 'package:flutter/material.dart';

class Fav extends StatefulWidget {
  const Fav({super.key});

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
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
                        'https://images.healthshots.com/healthshots/en/uploads/2022/12/12171842/10-minute-yoga-1600x900.jpg',
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
              'Easy Pose',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                  "Arrange suppotive padding (blanked, block, or bolster) under your sit bones so your hips will be higher then knees when you come into the poseCome to sit on your padding in a comfortable cross-legged position. Shift the flesh of your butt to each side with your hands so that your sit bones have a firm foundationYour hands can rest in your lap or on the tops of your thighs. Tum your palms up to be receptive or down to feel grounded"),
            )
          ],
        ),
      ),
    );
  }
}
