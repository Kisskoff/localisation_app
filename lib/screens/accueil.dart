import 'package:flutter/material.dart';
import 'package:livraison_app/component/button.dart';
import 'package:livraison_app/component/containeur.dart';
import 'package:livraison_app/component/dropdown.dart';
import 'package:livraison_app/component/setting.dart';
import 'package:livraison_app/component/slide_1.dart';
import 'package:livraison_app/component/slide_2.dart';
import 'package:livraison_app/component/slide_3.dart';
import 'package:livraison_app/component/text_field.dart';
import 'package:livraison_app/component/trait.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class MonAccueil extends StatelessWidget {
  final _controller = PageController();
  TextEditingController comController = TextEditingController();
  TextEditingController qtrController = TextEditingController();
  TextEditingController numController = TextEditingController();

  MonAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          iconSize: 20,
          color: Colors.blueGrey,
        ),
        title: const Text("A C C U E I L L E",
            style: TextStyle(
              color: Colors.blueGrey,
            )),
        centerTitle: true,
        toolbarHeight: 80,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Settings()));
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // // slide
              SizedBox(
                height: 200,
                child: PageView(controller: _controller, children: const [
                  MonSlide1(),
                  MonSlide2(),
                  MonSlide3(),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              SmoothPageIndicator(
                  controller: _controller, // PageController
                  count: 3,
                  effect: const ExpandingDotsEffect(
                      activeDotColor:
                          Colors.amberAccent), // your preferred effect
                  onDotClicked: (index) {}),

              // row categorie
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                verticalDirection: VerticalDirection.down,
                children: [
                  //
                  Expanded(
                    child: conteneur(
                      text: 'Obtenir un livreur',
                      color: Colors.amber,
                      textColor: Colors.black,
                      size: MediaQuery.of(context).size.width / 2,
                      colorFond: Colors.white,
                      imagePath: 'assets/livreur1.png',
                      sizeText: 14,
                      colorSh: Colors.black,
                      tap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) =>
                                obtenirLivreur(context));
                      },
                    ),
                  ),
                  Expanded(
                    child: conteneur(
                        text: 'Livreur immediat',
                        color: Colors.blueGrey,
                        colorFond: Colors.white,
                        size: MediaQuery.of(context).size.width / 2,
                        textColor: Colors.black,
                        imagePath: 'assets/livreur.png',
                        sizeText: 14,
                        colorSh: Colors.black,
                        tap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) =>
                                imediatLivreur(context),
                          );
                        }),
                  ),

                  Expanded(
                    child: conteneur(
                        text: 'Tarification',
                        color: Colors.black,
                        colorFond: Colors.white,
                        textColor: Colors.black,
                        size: MediaQuery.of(context).size.width / 2,
                        imagePath: 'assets/money.png',
                        sizeText: 14,
                        colorSh: Colors.black,
                        tap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Settings()),
                          );
                        }),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: conteneur(
                        text: 'Tarification',
                        color: Colors.black,
                        colorFond: Colors.white,
                        textColor: Colors.black,
                        size: MediaQuery.of(context).size.width / 2,
                        imagePath: 'assets/money.png',
                        sizeText: 14,
                        colorSh: Colors.black,
                        tap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Settings()),
                          );
                        }),
                  ),
                  Expanded(
                    child: conteneur(
                        text: 'Tarification',
                        color: Colors.black,
                        colorFond: Colors.white,
                        textColor: Colors.black,
                        size: MediaQuery.of(context).size.width / 2,
                        imagePath: 'assets/money.png',
                        sizeText: 14,
                        colorSh: Colors.black,
                        tap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Settings()),
                          );
                        }),
                  ),
                  Expanded(
                    child: conteneur(
                        text: 'Tarification',
                        color: Colors.black,
                        colorFond: Colors.white,
                        textColor: Colors.black,
                        size: MediaQuery.of(context).size.width / 2,
                        imagePath: 'assets/money.png',
                        sizeText: 14,
                        colorSh: Colors.black,
                        tap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Settings()),
                          );
                        }),
                  ),
                ],
              ),
              // //autre
              conteneur2(
                text: '',
                color: Colors.white,
                textColor: Colors.amber,
                size: MediaQuery.of(context).size.width,
                colorFond: const Color.fromARGB(20, 20, 20, 210),
              ),
              conteneur2(
                text: '',
                color: Colors.white,
                textColor: Colors.amber,
                size: MediaQuery.of(context).size.width,
                colorFond: const Color.fromARGB(20, 20, 20, 210),
              ),
              conteneur2(
                text: '',
                color: Colors.white,
                textColor: Colors.amber,
                size: MediaQuery.of(context).size.width,
                colorFond: const Color.fromARGB(20, 20, 20, 210),
              ),
              conteneur2(
                text: '',
                color: Colors.white,
                textColor: Colors.amber,
                size: MediaQuery.of(context).size.width,
                colorFond: const Color.fromARGB(20, 20, 20, 210),
              ),
              conteneur2(
                text: '',
                color: Colors.white,
                textColor: Colors.amber,
                size: MediaQuery.of(context).size.width,
                colorFond: const Color.fromARGB(20, 20, 20, 210),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }

  //

  Widget obtenirLivreur(context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
      child: Container(
        alignment: Alignment.center,
        height: 275,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            const SizedBox(
              height: 5,
            ),
            traitContent(),
            const SizedBox(
              height: 5,
            ),
            const DropItem(),
            const SizedBox(
              height: 8,
            ),
            textField(
              title: '',
              hint: 'Quartier',
              controller: qtrController,
              maxlines: 1,
              obscur: false,
              keybord: TextInputType.text,
            ),
            const SizedBox(
              height: 8,
            ),
            textField(
                title: '',
                hint: 'Numéro de téléphone',
                controller: numController,
                maxlines: 1,
                obscur: false,
                keybord: TextInputType.number),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buttonCustom(
                  text: 'Valider',
                  textColor: Colors.white,
                  color: Colors.amber,
                  tap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  ///// livreur imediat
  ///
  Widget imediatLivreur(context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
      child: Container(
        alignment: Alignment.center,
        height: 260,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            const SizedBox(
              height: 5,
            ),
            traitContent(),
            const SizedBox(
              height: 5,
            ),
            const DropItem(),
            const SizedBox(
              height: 8,
            ),
            textField(
                title: '',
                hint: 'Quartier',
                controller: qtrController,
                maxlines: 1,
                obscur: false,
                keybord: TextInputType.text),
            const SizedBox(
              height: 8,
            ),
            textField(
                title: '',
                hint: 'Numéro de téléphone',
                controller: numController,
                maxlines: 1,
                obscur: false,
                keybord: TextInputType.number),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buttonCustom(
                  text: 'Valider',
                  textColor: Colors.white,
                  color: Colors.amber,
                  tap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
