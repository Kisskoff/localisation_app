import 'package:flutter/material.dart';
import 'package:livraison_app/component/button.dart';
import 'package:livraison_app/component/setting_tile.dart';
import 'package:livraison_app/component/text_field.dart';
import 'package:livraison_app/component/trait.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController locatController = TextEditingController();
  TextEditingController nomController = TextEditingController();
  TextEditingController telController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('S E T T I N G S'),
        centerTitle: true,
        titleSpacing: 10,
        toolbarHeight: 75,
        toolbarOpacity: 0.5,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.white,
            child: Column(
              children: [
                const Image(image: AssetImage('assets/argent.png')),
                const SizedBox(
                  height: 10,
                ),
                ////////////////////////
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Ceci est un ',
                        style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: 'texte riche',
                        style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: Column(
              children: [
                tileSetting(
                  text: 'Profile',
                  textColor: Colors.black54,
                  bgColor: Colors.grey,
                  icon: Icons.person,
                  iconColor: Colors.white,
                  tap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) => setting(),
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                tileSetting(
                    text: 'Settings',
                    textColor: Colors.black54,
                    bgColor: Colors.grey,
                    icon: Icons.lock,
                    iconColor: Colors.white,
                    tap: () {}),
                const SizedBox(
                  height: 15,
                ),
                tileSetting(
                    text: 'Deconnexion',
                    textColor: Colors.black54,
                    bgColor: Colors.grey,
                    icon: Icons.refresh_sharp,
                    iconColor: Colors.white,
                    tap: () {}),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  //profile
  Widget profile() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
      child: Container(
        alignment: Alignment.center,
        // height: 260,
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
            const SizedBox(
              height: 8,
            ),
            textField(
              title: '',
              hint: 'Localisation',
              controller: locatController,
              maxlines: 1,
              obscur: false,
              keybord: TextInputType.text,
            ),
            const SizedBox(
              height: 8,
            ),
            textField(
              title: '',
              hint: 'Nom et prenoms',
              controller: nomController,
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
                controller: telController,
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

  // wi
  Widget setting() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black26,
    );
  }
}
