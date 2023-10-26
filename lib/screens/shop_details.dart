import 'package:flutter/material.dart';

class ShoppingDetails extends StatefulWidget {
  const ShoppingDetails({super.key});

  @override
  State<ShoppingDetails> createState() => _ShoppingDetailsState();
}

class _ShoppingDetailsState extends State<ShoppingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.amberAccent,
            // child: Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     const SizedBox(
            //       height: 20,
            //     ),
            //     IconButton(
            //         onPressed: () {
            //           Navigator.of(context).pop();
            //         },
            //         icon: const Icon(Icons.arrow_back_ios))
            //   ],
            // ),
          ),
        ],
      ),
    );
  }
}
