import 'package:flutter/material.dart';

// slider
class MonSlide2 extends StatelessWidget {
  const MonSlide2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          // color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: NetworkImage(
              'https://img.freepik.com/vecteurs-premium/conception-couverture-brochure-fond-abstrait_787089-65.jpg',
            ),
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
