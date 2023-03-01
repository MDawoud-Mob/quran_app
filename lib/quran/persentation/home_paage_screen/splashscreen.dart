import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:quran_app/quran/persentation/drawer/endDrawer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          backgroundColor: Colors.white,
          duration: 4000,
          splash: SizedBox(
            height:double.infinity ,
            width: double.infinity,
            child: Image.asset('assets/image/faskr2.jpg',fit: BoxFit.cover,)),  
        
          
           nextScreen: const EndDrawer()),
    );
  }
}