import 'package:flutter/material.dart';
import 'package:nectar/home_page.dart';
import 'package:nectar/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.white
    ),
    initialRoute: '/splashscreen',
    routes: {
      '/homepage' : (context) => const HomePage(),
      '/splashscreen' : (context) => const SplashScreen(),

    },
  ));
}

