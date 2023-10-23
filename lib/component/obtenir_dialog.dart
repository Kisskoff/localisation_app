import 'package:flutter/material.dart';

// class Obtenir extends StatefulWidget {
//   const Obtenir({super.key});

//   @override
//   State<Obtenir> createState() => _ObtenirState();
// }

// class _ObtenirState extends State<Obtenir> {
//   @override
//   Widget build(BuildContext context) {
//     return const ScaffoldMessenger(child: child);
//   }
// }

Widget obtenirLivreur({
  VoidCallback? tap,
  Color? blancColor,
  Color? blackColor,
  Color? textColor,
}) {
  return AlertDialog(
    backgroundColor: blancColor,
    title: const Text('Alerte'),
    content: const Column(
      children: [
        Text(
          'data',
          style: TextStyle(decoration: TextDecoration.underline),
        )
      ],
    ),
    actions: [
      ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: MaterialButton(
          color: Colors.transparent,
          hoverColor: blackColor,
          hoverElevation: 0,
          splashColor: blackColor,
          elevation: 0,
          onPressed: tap,
          child: Text(
            'OK',
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    ],
  );
}
