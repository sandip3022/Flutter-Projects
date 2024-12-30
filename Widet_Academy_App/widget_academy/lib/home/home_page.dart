import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(body: Center(child: Text('Home page') ,),
    );
    
    
  }
}