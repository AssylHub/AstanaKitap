import 'package:astana_kitap/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_page.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePageScreen(),
        'home_page': (context) => const HomePageScreen(),
      }
    )
  );
}


