import 'package:flutter/material.dart';

Widget shopComponent({
  VoidCallback? tap,
  final text,
  final textDesc,
  final prix,
  Color? color,
  Color? colorFond,
  Color? textColor,
  double? size,
  double? sizeText,
  // String? imagePath,
  String imgfond =
      "https://i.pinimg.com/236x/e3/41/2f/e3412f6e8bbbea85e3f4fab28510eb90.jpg",
}) {
  return Card(
    color: Colors.white,
    elevation: 10,
    child: Container(
      padding: const EdgeInsets.all(10),
      width: size,
      height: 230,
      decoration: BoxDecoration(
        color: colorFond,
        borderRadius: BorderRadius.circular(20),
        // boxShadow: const [
        //   BoxShadow(
        //     color: Colors.grey, // Couleur de l'ombre
        //     blurRadius: 0.5, // Rayon de flou
        //     spreadRadius: 1, // Étalement de l'ombre
        //     offset:
        //         Offset(2, 1), // Décalage de l'ombre par rapport au container
        //   ),
        // ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // border: Border.all(
                    //     color: Colors.white,
                    //     width: 2.0,
                    //     style: BorderStyle.solid),
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imgfond),
                    ),
                    // image: DecorationImage(
                    //   image: true
                    //       ? const NetworkImage(
                    //           'https://cdn-icons-png.flaticon.com/128/5082/5082749.png')
                    //       : Image.asset(imagePath) as ImageProvider,
                    // ),
                  ),
                  // color: Colors.white,
                  // child: Image.asset(
                  //   imagePath!,
                  //   width: double.infinity,
                  //   height: 100,
                  // ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_rounded,
                      size: 30,
                      shadows: [
                        Shadow(
                          color: Colors.teal, // Couleur de l'ombre
                          blurRadius: 0.2, // Rayon de flou
                          // spreadRadius: 1, // Étalement de l'ombre
                          offset: Offset(0,
                              0.2), // Décalage de l'ombre par rapport au container
                        ),
                      ],
                    ),
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Text(
              textDesc,
              style: const TextStyle(
                fontSize: 14,
                // maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  prix,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.red,
                  ),
                ),
                const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.add_circle,
                      size: 24,
                      color: Colors.amber,
                    )),
              ],
            ),
          ),
        ],
        //
      ),
    ),
  );
}
