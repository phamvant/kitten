import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button_blur.dart';

class AddCartBar extends StatefulWidget {
  const AddCartBar({
    super.key,
  });

  @override
  State<AddCartBar> createState() => _AddCartBarState();
}

class _AddCartBarState extends State<AddCartBar> {
  int _quantity = 0;

  void increaseQuantity() {
    setState(() {
      _quantity += 1;
    });
  }

  void decreaseQuantity() {
    setState(() {
      _quantity -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor.withAlpha(200),
      height: 220,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "\$20.00",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(20),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: IconButton(
                      onPressed: () {
                        decreaseQuantity();
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 25,
                    child: Center(
                      child: Text(
                        _quantity.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(20),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: IconButton(
                      onPressed: () {
                        increaseQuantity();
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          const BlurButton(buttonContent: "Add To Cart"),
        ],
      ),
    );
  }
}
