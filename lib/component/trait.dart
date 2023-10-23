import 'package:flutter/material.dart';

Widget traitContent() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 3,
            width: 80,
            color: Colors.grey,
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}

//
Widget traitVContent() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 2,
            color: Colors.grey,
          ),
        ],
      ),
    ],
  );
}
