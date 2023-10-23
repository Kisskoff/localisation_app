import 'package:flutter/material.dart';

Widget conteneur({
  VoidCallback? tap,
  final text,
  Color? color,
  Color? colorFond,
  Color? textColor,
  double? size,
  double? sizeText,
  String? imagePath,
  Color? colorSh,
}) {
  return GestureDetector(
    onTap: tap,
    child: Card(
      shadowColor: colorSh,
      elevation: 10,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 15),
      child: Container(
        width: size,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorFond,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   icon,
            //   weight: 30,
            //   size: 50,
            //   color: color,
            // ),
            CircleAvatar(
              // backgroundImage: imagePath! != ''?Image(image: AssetImage(imagePath!),): const Image(image: AssetImage('assets/map.jpeg'),),
              child: imagePath != ''
                  ? Image(
                      image: AssetImage(imagePath!),
                    )
                  : const Image(
                      image: AssetImage('assets/argent.png'),
                    ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: sizeText,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

/////// CONTENEUR 2 /////////
///
Widget conteneur2({
  VoidCallback? tap,
  final text,
  Color? color,
  Color? colorFond,
  Color? textColor,
  double? size,
  double? sizeText,
}) {
  return GestureDetector(
    onTap: tap,
    child: Card(
      shadowColor: color,
      elevation: 2,
      margin: const EdgeInsets.all(10),
      child: Container(
        width: size,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorFond,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: sizeText,
                color: textColor,
                // textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
