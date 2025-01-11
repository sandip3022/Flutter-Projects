import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>{
  @override
  void initState() {
    super.initState();
  }

  final List<String> imagePath = [
    'assets/images/welcome1.png',
    'assets/images/welcome2.png',
    'assets/images/welcome3.png',

    
  ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      appBar: AppBar(title: const Text('Welcome'),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 400.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: false,
                  autoPlayAnimationDuration: const Duration(milliseconds: 3000),
                  autoPlayInterval: const Duration(seconds: 10),
                  viewportFraction: 0.8,
              ),
              items: imagePath.map((path) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            path,
                            fit: BoxFit.cover,
                            width: double.infinity,
                               ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
          const SizedBox(height: 100,),
          Row(
            mainAxisAlignment:  MainAxisAlignment.end,
            children: [
            
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                height: 100,
                width: 100,
                decoration:  BoxDecoration(color: Colors.pink.shade300,
                ),
                child: const Center(
                  child:  Row(
                    children: [
                      Stack(children:[
                      CircleAvatar(backgroundColor: Colors.white,),
                      Icon(Icons.forward_10_outlined)]),
                      Text('Next',
                      style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ), 
                
              ),
            )
          ],)
          ],
        ),
      ),
      );    
  }
}
  