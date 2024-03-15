import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project1/main.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),() {
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Lgpage()),
          );
          }
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child:Padding(
            padding: const EdgeInsets.symmetric(vertical:300 ),
            child: Column(
              children: [
                Text("YOUR",style: TextStyle(fontSize: 40,color: Colors.orange),),
                Text("FOOD",style: TextStyle(fontSize: 40,color: Colors.white),),
                Text("DESTINATION!",style: TextStyle(fontSize: 40,color: Colors.green),),
                Icon(Icons.fastfood,color: Colors.white,size: 70,),
              ],
            ),
          )
        ),
      ),
    );
  }
}

