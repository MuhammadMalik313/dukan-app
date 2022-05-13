
import 'package:flutter/material.dart';

class PaymentButtons extends StatelessWidget {
  final text;
  final bgColor;
  final fgColor;
  final double size;
  const PaymentButtons({
    Key? key,
    required this.text,
    required this.bgColor,
    required this.fgColor,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
        style: ElevatedButton.styleFrom(
          primary: bgColor, // background
          onPrimary: fgColor, // foreground
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
          minimumSize: Size(size, 36),
        ),
      ),
    );
  }
}