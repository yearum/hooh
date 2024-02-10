// File: main.dart

import 'package:flutter/material.dart';
import 'package:iyo/screens/HomeScreen.dart';
import 'package:iyo/screens/Pemindai.dart';
import 'package:iyo/screens/ProfilDokter.dart';
import 'package:iyo/screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skinker',
      theme: ThemeData(),
      initialRoute: '/screens/HomeScreen',
      routes: {
        '/screens/HomeScreen': (context) => HomeScreen(),
        '/screens/Pemindai': (context) => CameraScreen(),
        '/screens/Profile': (context) => Profile(),
        '/screens/ProfilDokter': (context) => ProfilDokter(),
      },
    );
  }
}
