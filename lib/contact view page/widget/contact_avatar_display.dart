import 'package:flutter/material.dart';

class AvatarImageCustom extends StatelessWidget {
  final Color color;
  final String letter;
  const AvatarImageCustom(
      {super.key, required this.color, required this.letter});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: Center(
        child: Text(
          letter,
          style: const TextStyle(color: Colors.black, fontSize: 80),
        ),
      ),
    );
  }
}
