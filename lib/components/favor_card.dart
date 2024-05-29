import 'package:flutter/material.dart';

class FavorCard extends StatelessWidget {
  const FavorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 10, right: 20, bottom: 40, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "images/kitten3.png",
                height: 100,
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                children: [Text("data"), Text("data")],
              ),
            ],
          ),
          const Icon(Icons.favorite_outline)
        ],
      ),
    );
  }
}
