import 'package:astana_kitap/screens/login_page.dart';
import 'package:flutter/material.dart';
import '../components/bordered_circle.dart';
import '../components/circle_button.dart';
import '../constants.dart';

class WelcomePageScreen extends StatelessWidget {
  const WelcomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
              clipBehavior: Clip.none,
              children: [
                BorderedCircle(
                  alignmentGeometry: Alignment.center,
                  blueColor: blueColor,
                  child: RichText(
                      text: TextSpan(
                          text: "ASTANA",
                          style: TextStyle(
                              fontSize: 55,
                              color: Colors.grey.shade700,
                              fontFamily: 'Anton'),
                          children: [
                        TextSpan(
                            text: "KITAP",
                            style: TextStyle(
                              color: blueColor,
                            ))
                      ])),
                ),
                CircleButton(
                  bottom: -40,
                  right: -10,
                  blueColor: amberColor,
                  boxConstraints: const BoxConstraints(
                    minWidth: 120,
                    minHeight: 120,
                  ),
                ),
                CircleButton(
                  right: 20,
                  blueColor: blueColor,
                  child: const Text(
                    "Начать",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ],
            ),
          ),
          const Stack(
            children: [],
          )
        ],
      ),
    );
  }
}
