import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';

class SaveButtonCustom extends StatelessWidget {
  final void Function() saved;
  const SaveButtonCustom({super.key, required this.saved});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: saved,
      child: Container(
        width: 80,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: blueColor,
        ),
        child: const Center(
          child: Text(
            "Save",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
