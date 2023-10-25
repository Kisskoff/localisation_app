import 'package:flutter/material.dart';
// import 'package:livraison_app/screens/accueil.dart';
// import 'package:livraison_app/screens/home_page.dart';
import 'package:livraison_app/screens/shop_page.dart';
// import 'package:livraison_app/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'L I V R A I S O N',
      theme: ThemeData(
        primaryColor: Colors.amberAccent,
        useMaterial3: true,
      ),
      home: const Shopping(),
    );
  }
}
