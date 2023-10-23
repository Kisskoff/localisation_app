import 'package:flutter/material.dart';

Widget shopComponent({
  VoidCallback? tap,
  final text,
  Color? color,
  Color? colorFond,
  Color? textColor,
  double? size,
  double? sizeText,
  String? imagePath,
}) {
  return Container(
    padding: const EdgeInsets.all(10),
    width: size,
    height: 200,
    decoration: BoxDecoration(
        color: colorFond, borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        Stack(
          // alignment: AlignmentGeometry,
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              imagePath!,
              width: 90,
              height: 90,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.circle),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
      //
    ),
  );
}
