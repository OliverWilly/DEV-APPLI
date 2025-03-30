import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

 late AnimationController _animationController;
  
  @override
  void initState(){
   super.initState();
   _animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  );
  _animationController.forward();
  Timer(const Duration(seconds: 3), () {

  });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: Tween<double>(begin:0, end: 1).animate(
                CurvedAnimation(
                  parent : _animationController,
                  curve: Curves.easeOut,
              ),
           ),
           child: Image.asset('images/logo.jpeg', height:150),
         ),
         ],
      )));
  }
}