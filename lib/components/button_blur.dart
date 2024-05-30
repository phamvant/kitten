import 'package:flutter/material.dart';

class BlurButton extends StatelessWidget {
  final String _buttonContent;
  final Function()? _onTap;
  final Icon? _icon;

  const BlurButton(
      {super.key, required String buttonContent, Function()? onTap, Icon? icon})
      : _buttonContent = buttonContent,
        _onTap = onTap,
        _icon = icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(20),
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _buttonContent,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            if (_icon != null) ...[
              _icon,
            ],
          ],
        ),
      ),
    );
  }
}
