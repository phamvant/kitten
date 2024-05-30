import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/components/add_cart_bar.dart';
import 'package:flutter_application_1/models/kitten.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPage extends StatelessWidget {
  final Kitten _kitten;
  const InfoPage({super.key, required Kitten kitten}) : _kitten = kitten;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  Image.asset(_kitten.imagePath),
                  Text(
                    _kitten.name,
                    style: GoogleFonts.dmSerifDisplay(
                      color: Colors.grey.shade900,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "contain finest necessary temperature solve perhaps coach lion plain slave thin follow noon gather region jungle tonight instead shirt automobile war diagram fur policeman. draw energy began whale farther lying die if whispered experiment yet east social pet smile read outer shout unusual plates touch mistake allow indicate. possible over funny church adventure place evidence symbol copper song thick mood large organized though are time star stretch classroom won happily score bar.",
                    style: TextStyle(height: 2),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const AddCartBar()
          ],
        ),
      ),
    );
  }
}
