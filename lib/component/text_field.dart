import 'package:flutter/material.dart';

// class Textfield extends StatefulWidget {
//   const Textfield({super.key});

//   @override
//   State<Textfield> createState() => _TextfieldState();
// }

// class _TextfieldState extends State<Textfield> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       height: 45,
//       color: Colors.black45,
//       child: TextFormField(),
//     );
//   }
// }

//
Widget textField({
  final title,
  String? hint,
  TextEditingController? controller,
  int? maxlines = 1,
  bool obscur = false,
  final keybord,
  // int? length = 4,
}) {
  return Column(
    children: [
      Container(
        // margin: const EdgeInsets.symmetric(vertical: 0.0),
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            // color: Colors.grey[200],
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
              style: BorderStyle.solid,
            )),
        child: TextFormField(
          // maxLength: length,
          obscureText: obscur,
          obscuringCharacter: '*',
          controller: controller,
          maxLines: maxlines,
          keyboardType: keybord,
          decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
              suffixIcon: IconButton(
                  onPressed: () {
                    controller?.clear();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 16.0,
                  ))),
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

/////////
////////////////
///
Widget dateField({
  VoidCallback? tap,
  final title,
  String? hint,
  TextEditingController? controller,
  int? maxlines = 1,
  IconData? icon,
  IconData? prefixIcon,
}) {
  return Column(
    children: [
      Container(
        // margin: const EdgeInsets.symmetric(vertical: 5.0),
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey, width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextFormField(
          controller: controller,
          maxLines: maxlines,
          keyboardType: TextInputType.datetime,
          readOnly: true,
          decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
              prefixIcon: IconButton(
                icon: const Icon(
                  Icons.calendar_month_sharp,
                  color: Colors.black45,
                ),
                onPressed: tap,
              ),
              suffixIcon: IconButton(
                  onPressed: () {
                    controller?.clear();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 16.0,
                  ))),
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}

// search
Widget searchTextField({
  VoidCallback? tap,
  final title,
  String? hint,
  TextEditingController? controller,
  int? maxlines = 1,
}) {
  return Column(
    children: [
      Container(
        // margin: const EdgeInsets.symmetric(vertical: 0.0),
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            // color: Colors.grey[200],
            border: Border.all(
              color: Colors.white,
              width: 1.0,
              style: BorderStyle.solid,
            )),
        child: TextFormField(
          onEditingComplete: tap,
          controller: controller,
          maxLines: maxlines,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
              prefixIcon:
                  GestureDetector(onTap: tap, child: const Icon(Icons.search)),
              suffixIcon: IconButton(
                  onPressed: () {
                    controller?.clear();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 16.0,
                  ))),
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    ],
  );
}
