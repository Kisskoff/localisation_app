import 'package:flutter/material.dart';
import 'package:livraison_app/component/containeur.dart';
import 'package:livraison_app/component/shop_component.dart';
import 'package:livraison_app/component/text_field.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.grey[100],
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //titre
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'FOOD',
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  TextSpan(
                    text: 'Shop',
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.normal,
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //search
            searchTextField(
              title: '',
              hint: 'search',
              controller: searchController,
              tap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            // categorie
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  conteneur(
                    text: 'Pizza',
                    color: Colors.amber,
                    colorFond: Colors.amber,
                    size: 90,
                    sizeText: 16,
                    imagePath: 'assets/pizza.png',
                    colorSh: Colors.white,
                    tap: () {},
                  ),
                  conteneur(
                    text: 'Salade',
                    color: Colors.amber,
                    colorFond: Colors.white,
                    size: 90,
                    sizeText: 16,
                    imagePath: 'assets/trousers.png',
                    colorSh: Colors.white,
                    tap: () {},
                  ),
                  conteneur(
                    text: 'Hamburger',
                    color: Colors.amber,
                    colorFond: Colors.white,
                    size: 90,
                    sizeText: 16,
                    imagePath: 'assets/soccer-jersey.png',
                    colorSh: Colors.white,
                    tap: () {},
                  ),
                  conteneur(
                    text: 'Biere',
                    color: Colors.amber,
                    colorFond: Colors.white,
                    size: 90,
                    sizeText: 16,
                    imagePath: 'assets/trainers.png',
                    colorSh: Colors.white,
                    tap: () {},
                  ),
                  conteneur(
                    text: 'Spiritueux',
                    color: Colors.amber,
                    colorFond: Colors.white,
                    size: 90,
                    sizeText: 16,
                    imagePath: 'assets/skirt.png',
                    colorSh: Colors.white,
                    tap: () {},
                  ),
                  conteneur(
                    text: 'Boisson Chaude',
                    color: Colors.amber,
                    colorFond: Colors.white,
                    size: 90,
                    sizeText: 16,
                    imagePath: 'assets/skirt.png',
                    colorSh: Colors.white,
                    tap: () {},
                  ),
                  conteneur(
                    text: 'Boisson fraiche',
                    color: Colors.amber,
                    colorFond: Colors.white,
                    size: 90,
                    sizeText: 16,
                    imagePath: 'assets/trousers.png',
                    colorSh: Colors.white,
                    tap: () {},
                  ),
                ],
              ),
            ),
            // title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popualire'.toUpperCase(),
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.normal),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_alt),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // popular
            shopComponent(
              imagePath: 'assets/trousers.png',
              colorFond: Colors.grey[300],
              color: Colors.black12,
              text: 'Shoes',
              textColor: Colors.black,
              size: 200,
            ),
          ],
        ),
      ),
    );
  }
}
