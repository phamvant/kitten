import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button_blur.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              "KITTEN",
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 30,
              ),
            ),

            //
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                'images/kitten1.png',
                height: 300,
              ),
            ),

            //
            Text(
              "A KITTEN IS A JUVENILE CAT",
              style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white, fontSize: 44, height: 1.3),
            ),

            //
            Text(
              "After being born, kittens display primary altriciality and are fully dependent on their mothers for survival. They normally do not open their eyes for seven to ten days",
              style: TextStyle(color: Colors.grey.shade100),
            ),

            BlurButton(
              buttonContent: 'Get started',
              onTap: () {
                Navigator.pushNamed(context, 'mainpage');
              },
            ),

            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
