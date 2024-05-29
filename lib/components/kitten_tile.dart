import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/kitten.dart';

class KittenTile extends StatelessWidget {
  final Kitten _kitten;
  const KittenTile({super.key, required Kitten kitten}) : _kitten = kitten;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              _kitten.imagePath,
              height: 150,
            ),

            //
            const SizedBox(
              height: 20,
            ),

            //
            Text(
              _kitten.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700,
              ),
            ),

            //
            const SizedBox(
              height: 10,
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("data"), Text("ada")],
            )
          ],
        ));
  }
}
