import 'package:flutter/material.dart';

// slider
class MonSlide3 extends StatelessWidget {
  const MonSlide3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage('assets/10.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

Widget scrolle({
  String? imagePath,
  Color? fondColor,
}) {
  return Container(
    padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
    width: double.infinity,
    height: 200,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath!),
      ),
      color: fondColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: const Column(
      children: [
        // Text(
        //   // 'ceci est un text',
        //   style: TextStyle(fontSize: 18, color: Colors.white),
        // ),
        // Text(
        //   'data',
        //   style: TextStyle(fontSize: 18, color: Colors.white),
        // ),
      ],
    ),
  );
}
