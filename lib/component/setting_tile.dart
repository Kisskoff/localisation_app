import 'package:flutter/material.dart';

Widget tileSetting({
  VoidCallback? tap,
  Color? bgColor,
  Color? iconColor,
  final text,
  Color? textColor,
  IconData? icon,
}) {
  return Title(
    title: '',
    color: Colors.white,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // icon
            SizedBox(
              width: 40,
              height: 40,
              child: CircleAvatar(
                backgroundColor: bgColor,
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 25,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            // text
            Text(
              text,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 70,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    ),
  );
}
