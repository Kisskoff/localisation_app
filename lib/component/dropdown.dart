import 'package:flutter/material.dart';

class DropItem extends StatefulWidget {
  const DropItem({super.key});

  @override
  State<DropItem> createState() => _DropItemState();
}

class _DropItemState extends State<DropItem> {
  static const _menu = [
    'Cocody',
    'Marcory',
    'Abobo',
    'Plateau',
    'Adjame',
    'Koumassi',
    'Yopougon',
    'Bingerville',
    'Treich-Ville',
    'Port-Bouet',
    'Anyama',
  ];

  final List<DropdownMenuItem<String>> dropDowMenuItems = _menu
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String? _btnSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey, width: 1.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        title: const Text(
          'commune',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: DropdownButton<String>(
          style: const TextStyle(color: Colors.black87),
          value: _btnSelect,
          hint: const Text('Choisir'),
          onChanged: (String? newValue) {
            if (newValue != null) {
              setState(() {
                _btnSelect = newValue;
              });
            }
          },
          items: dropDowMenuItems,
          // Utilisez InputDecoration pour personnaliser le style du DropdownButton.
          dropdownColor:
              Colors.white, // Couleur d'arrière-plan du menu déroulant
          // icon: const Icon(
          // Icons.arrow_right_outlined), // Icône du bouton déroulant
          // isExpanded:
          //     true, // Pour étendre le bouton déroulant sur toute la largeur
          underline: Container(), // Supprime la ligne de bordure
        ),
      ),
    );
  }
}
