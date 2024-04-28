import 'package:flutter/material.dart';
import 'package:shopper_buddy/constants/global_variables.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  const CustomButton(
      {super.key, required this.text, required this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          shape: const RoundedRectangleBorder(),
          backgroundColor: GlobalVariables.secondaryColor,
          foregroundColor: color),
      child: Text(
        text,
        style: TextStyle(
            color:
                color == null ? GlobalVariables.backgroundColor : Colors.black),
      ),
    );
  }
}
