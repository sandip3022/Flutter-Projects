import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:widget_academy/home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [Flexible(
          flex: 2,
          child: Stack(
            children: [
              Image.asset('assets/splash_screen.png',fit:BoxFit.fitWidth),
              Center(
                child: Container(
                  height: 150,
                  width:300,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(color: Color.fromARGB(255, 245, 221, 209)),
                  child: const  Text('Welcome to Widget Academy',
                  style: TextStyle(fontWeight: FontWeight.w400,
                  fontSize: 20,
                  
                  ),)),
              ),
               
            ],
          ),
        ),]
      ),
    );
  }
}