import 'package:flutter/material.dart';
import 'package:livraison_app/component/setting_tile.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                  text: 'Profile Setting',
                  textColor: Colors.black54,
                  bgColor: Colors.grey,
                  icon: Icons.person,
                  iconColor: Colors.white,
                ),
                const SizedBox(
                  height: 15,
                ),
                tileSetting(
                  text: 'Change password',
                  textColor: Colors.black54,
                  bgColor: Colors.grey,
                  icon: Icons.lock,
                  iconColor: Colors.white,
                ),
                const SizedBox(
                  height: 15,
                ),
                tileSetting(
                  text: 'Change role',
                  textColor: Colors.black54,
                  bgColor: Colors.grey,
                  icon: Icons.refresh_sharp,
                  iconColor: Colors.white,
                ),
                const SizedBox(
                  height: 15,
                ),
                tileSetting(
                  text: 'Dark mode',
                  textColor: Colors.black54,
                  bgColor: Colors.grey,
                  icon: Icons.sunny,
                  iconColor: Colors.white,
                ),
                const SizedBox(
                  height: 50,
                ),
                tileSetting(
                  text: 'Categories',
                  textColor: Colors.black54,
                  bgColor: Colors.grey,
                  icon: Icons.category,
                  iconColor: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                tileSetting(
                  text: 'Products',
                  textColor: Colors.black54,
                  bgColor: Colors.grey,
                  icon: Icons.plus_one,
                  iconColor: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                tileSetting(
                  text: 'Delivery',
                  textColor: Colors.black54,
                  bgColor: Colors.grey,
                  icon: Icons.bike_scooter,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
