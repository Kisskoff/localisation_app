import 'package:flutter/material.dart';

// slider
class MonSlide1 extends StatelessWidget {
  const MonSlide1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('assets/apps.png'),
              fit: BoxFit.cover,
            )),
        // child: Image.asset('assets/apps.png'),
      ),
    );
  }
}

// Widget scrolß