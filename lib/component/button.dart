import 'package:flutter/material.dart';

Widget buttonCustom({
  VoidCallback? tap,
  Color? color,
  Color? textColor,
  final text,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: SizedBox(
      width: 180,
      height: 45,
      child: MaterialButton(
          onPressed: tap,
          elevation: 5.0,
          color: color,
          hoverColor: Colors.black,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
          )),
    ),
  );
}
