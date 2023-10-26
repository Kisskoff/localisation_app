import 'package:flutter/material.dart';
import 'package:livraison_app/component/containeur.dart';
import 'package:livraison_app/component/shop_component.dart';
import 'package:livraison_app/component/text_field.dart';
import 'package:livraison_app/screens/shop_details.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  TextEditingController searchController = TextEditingController();

  final List<Map> myproducts = List.generate(
      10,
      (index) => {
            'id': index,
            "name": "product $index",
            "desc ": " ceci est une description",
            "prix": "2000 f",
            "imagePath": "assets/skirt.png",
          }).toList();
  ///////
  ///final
  final List<Map<String, dynamic>> gridMap = [
    {
      "id": 1,
      "name": "produit 1",
      "desc": "ceci est une description",
      'prix': "20 000 F",
      "imgPath":
          "https://i.pinimg.com/236x/dc/14/cf/dc14cf80f9b2cd43a740afc7af13a0af.jpg"
    },
    {
      "id": 2,
      "name": "produit 2",
      "desc": "ceci est une description du produit ...",
      'prix': "12 000 F",
      "imgPath":
          "https://i.pinimg.com/236x/78/3a/e5/783ae56c13fd3fdc2b12d9b970206a7b.jpg"
    },
    {
      "id": 3,
      "name": "produit 3",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath":
          'https://i.pinimg.com/236x/60/4c/8b/604c8bf457a22de04478583184f2577f.jpg'
    },
    {
      "id": 4,
      "name": "produit 4",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath":
          "https://i.pinimg.com/236x/0d/35/67/0d35673d4b04b09b5ad0de4f0f468e42.jpg"
    },
    {
      "id": 5,
      "name": "produit 5",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath":
          "https://i.pinimg.com/236x/69/77/f5/6977f539e8f12885422106a749cdae4e.jpg"
    },
    {
      "id": 6,
      "name": "produit 6",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath":
          "https://i.pinimg.com/236x/b5/5b/20/b55b200c05b97758b31503222f5c7815.jpg"
    },
    {
      "id": 7,
      "name": "Walden by Camper",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath":
          "https://i.pinimg.com/236x/4f/53/78/4f53781ebe28875f3dec83a69102cb25.jpg"
    },
    {
      "id": 8,
      "name": "produit 8",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath":
          "https://i.pinimg.com/236x/a2/61/f5/a261f5f69b4748f9613e8355778f68d5.jpg"
    },
    {
      "id": 9,
      "name": "produit 9",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath":
          "https://i.pinimg.com/236x/d6/af/31/d6af315b3018e487e229b418a72efa8b.jpg"
    },
    {
      "id": 10,
      "name": "produit 10",
      "desc": "ceci est une description",
      'prix': "2000 F",
      "imgPath":
          "https://i.pinimg.com/236x/7b/9c/16/7b9c16c163f675a5fbdaf2b6a7e6c63e.jpg"
    },
    {
      "id": 11,
      "name": "Summer New Fashion Urban Short-sleeved Linen Cardigan",
      "desc":
          "Summer New Fashion Urban Short-sleeved Linen Cardigan Shirt Men's Printed Casual Comfortable Style Flower Shirt PL6-2XL",
      'prix': "2000 F",
      "imgPath":
          "https://i.pinimg.com/564x/66/df/29/66df298e961010d0e0fdd941cafedc0e.jpg"
    },
    {
      "id": 12,
      "name": "Overlap Waist Space Dye Track Shorts",
      "desc":
          "dLight Grey Casual Collar Knitted Fabric Plain Track Shorts Embellished Medium Stretch Women Clothing",
      'prix': "2000 F",
      "imgPath":
          "https://i.pinimg.com/236x/27/52/40/275240707fbb7fc720217891726ca9d0.jpg"
    },
    {
      "id": 13,
      "name":
          "Girls Women High Waisted Plain Pleated Skirt Skater Tennis School Uniforms A-line Mini Skirt Lining Shorts",
      "desc":
          "100% Polyester Zipper closure Hand Wash Only Material: polyester(high quality, no stretchy) Pleated style, skater design, mini length, uniform/ school skirt solid",
      'prix': "2000 F",
      "imgPath":
          "https://i.pinimg.com/564x/49/e6/8a/49e68a96bd1896414139844702842cf0.jpg"
    },
    {
      "id": 14,
      "name": "All Star by kisskoff",
      "desc":
          "100% Polyester Zipper closure Hand Wash Only Material: polyester(high quality, no stretchy) Pleated style, skater design, mini length, uniform/ school skirt solid",
      'prix': "2000 F",
      "imgPath":
          "https://i.pinimg.com/236x/98/b4/2a/98b42a58f643fd54e3d4699b2860202a.jpg"
    },
  ];

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
        child: SingleChildScrollView(
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
              // // title
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'Popualire'.toUpperCase(),
              //       style: const TextStyle(
              //           fontSize: 16, fontWeight: FontWeight.normal),
              //     ),
              //     IconButton(
              //       onPressed: () {},
              //       icon: const Icon(Icons.filter_list),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 10,
              ),
              // popular
              // // // listview
              // Padding(
              //   padding: const EdgeInsets.all(20),
              //   child: ListView.builder(
              //     itemCount: gridMap.length,
              //     itemBuilder: (_, index) {
              //       return Container(
              //         width: double.infinity,
              //         height: 200,
              //         color: Colors.amber,
              //       );
              //       // return shopComponent(
              //       //   colorFond: Colors.grey[300],
              //       //   color: Colors.black12,
              //       //   text: 'Shoes',
              //       //   textColor: Colors.black,
              //       //   size: 200,
              //       //   textDesc: 'vide vide vide',
              //       //   prix: '3000 F',
              //       //   imgfond:
              //       //       'https://i.pinimg.com/236x/7b/9c/16/7b9c16c163f675a5fbdaf2b6a7e6c63e.jpg',
              //       // );
              //     },
              //   ),
              // ),

              const SizedBox(
                height: 15,
              ),

              // gridview
              // title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'News'.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: AutofillHints.familyName),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_list),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: gridMap.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      mainAxisExtent: 230,
                    ),
                    itemBuilder: (_, index) {
                      return shopComponent(
                        // imagePath: 'assets/trousers.png',
                        colorFond: Colors.white,
                        color: Colors.black12,
                        text:
                            "${gridMap.elementAt(index)['name']}".toUpperCase(),
                        textColor: Colors.black,
                        size: 200,
                        textDesc: "${gridMap.elementAt(index)['desc']}",
                        prix: '${gridMap.elementAt(index)['prix']}',
                        imgfond: '${gridMap.elementAt(index)['imgPath']}',
                        tap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ShoppingDetails()),
                          );
                        },
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
