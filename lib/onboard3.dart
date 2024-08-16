import 'package:flutter/material.dart';
import 'package:yoga_app/bottom.dart';

class Onboard3 extends StatefulWidget {
  const Onboard3({super.key});

  @override
  State<Onboard3> createState() => _Onboard3State();
}

class _Onboard3State extends State<Onboard3> {
  var level = true;
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
                height: height / 2.5,
                width: width / 1.5,
                image: AssetImage('images/yoga.jpg'),
                fit: BoxFit.contain,
              ),
              Text(
                'What is your Goal ?',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 27,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Let us know you better',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
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
                        'Weight Loss',
                        style: TextStyle(
                          color: level ? Colors.black : Colors.deepPurple,
                          fontSize: 20,
                          fontFamily: 'Poppins',
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
                      'Body Relax',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                      ),
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
                      'Posture Correction',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0, bottom: 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepPurple[200]),
                    fixedSize: MaterialStatePropertyAll(
                        Size(width / 1.2, height / 16)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Bottom(),
                        ));
                  },
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
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
