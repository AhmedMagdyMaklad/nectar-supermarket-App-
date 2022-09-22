import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nectar/getstart.dart';
import 'package:nectar/home_page.dart';
import 'package:nectar/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState() ;

    Timer(const Duration(seconds: 4),() =>
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const GetStarted())));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/splash.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}
