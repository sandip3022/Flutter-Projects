import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widget_academy/home/welcome_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key,});

  @override
  State<StatefulWidget> createState() => _SplashPageState();
  }

  @override
  _SplashPageState createState() => _SplashPageState();


class _SplashPageState extends State<SplashPage> {

   @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomePage()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Container
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color.fromARGB(255, 187, 102, 73),
          ),

          // Centered Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: const Color.fromARGB(255, 132, 198, 243),
                  ),
                ),
                const SizedBox(height: 20), // Space between widgets
                const Text(
                  "Splash Screen",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

