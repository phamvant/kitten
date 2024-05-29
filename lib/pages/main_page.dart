import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/card_redeem.dart';
import 'package:flutter_application_1/components/favor_card.dart';
import 'package:flutter_application_1/components/kitten_tile.dart';
import 'package:flutter_application_1/components/search_bar.dart';
import 'package:flutter_application_1/models/kitten.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Kitten> _kittenList = [
    Kitten(name: "Yellow Kitten", imagePath: "images/kitten1.png"),
    Kitten(name: "Mixed Kitten", imagePath: "images/kitten2.png"),
    Kitten(name: "Real Kitten", imagePath: "images/kitten3.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Kitten"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RedeemCard(),

                //
                const SizedBox(
                  height: 20,
                ),
                //
                const CustomSearchBar(),

                const SizedBox(
                  height: 10,
                ),

                //
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Kitten list",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                  ),
                )
              ],
            ),
          ),

          //
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _kittenList.length,
              itemBuilder: (context, index) => KittenTile(
                kitten: _kittenList[index],
              ),
            ),
          ),

          //
          const SizedBox(
            height: 20,
          ),

          const FavorCard()
        ],
      ),
    );
  }
}
