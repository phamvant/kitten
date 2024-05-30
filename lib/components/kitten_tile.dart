import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/kitten.dart';

class KittenTile extends StatelessWidget {
  final Kitten _kitten;
  final Function()? _onTap;
  const KittenTile({super.key, required Kitten kitten, Function()? onTap})
      : _kitten = kitten,
        _onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          margin: const EdgeInsets.only(left: 20, right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                _kitten.imagePath,
                width: 150,
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

              SizedBox(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "mass: 5kg",
                      style: TextStyle(color: Colors.grey.shade800),
                    ),
                    Icon(
                      Icons.favorite_rounded,
                      color: Colors.pink.shade100,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
