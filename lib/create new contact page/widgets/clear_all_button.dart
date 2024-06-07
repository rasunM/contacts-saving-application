import 'package:flutter/material.dart';

class ClearAllButton extends StatelessWidget {
  final void Function() cleared;
  const ClearAllButton({super.key,required this.cleared});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:cleared ,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35), color: Colors.red),
        padding: const EdgeInsets.all(8),
        width: 80,
        height: 40,
        child: const Center(
          child: Text(
            "Clear All",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 13),
          ),
        ),
      ),
    );
  }
}
