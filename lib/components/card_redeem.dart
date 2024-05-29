import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button_blur.dart';

class RedeemCard extends StatelessWidget {
  const RedeemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Get your kitten now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BlurButton(buttonContent: "Redeem"),
            ],
          ),

          //
          Image.asset(
            "images/kitten2.png",
            height: 120,
          )
        ],
      ),
    );
  }
}
