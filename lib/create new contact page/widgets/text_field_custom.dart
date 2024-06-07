import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';

class TextFieldCustom extends StatelessWidget {
  final TextEditingController controller;
  final String labelName;
  final IconData icon;
  final void Function(String) onChanged;
  final bool showCloseButton;
  final void Function() closeButtonAction;
  final void Function()? clickObject;
  final bool clicked;

  const TextFieldCustom({
    super.key,
    required this.labelName,
    required this.icon,
    required this.controller,
    required this.onChanged,
    required this.showCloseButton,
    required this.closeButtonAction,
    this.clickObject,
    required this.clicked,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        style: TextStyle(color: clicked ? blueColor : greyColor),
        onTap: clickObject,
        controller: controller,
        cursorColor: blueColor,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: clicked ? blueColor : greyColor,
          ),
          suffixIcon: showCloseButton
              ? IconButton(
                  onPressed: closeButtonAction,
                  icon: const Icon(Icons.close),
                  color: clicked ? blueColor : greyColor,
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: clicked ? blueColor! : greyColor, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: blueColor!, width: 1),
          ),
          label: Text(
            labelName,
            style: TextStyle(color: clicked ? blueColor : greyColor),
          ),
        ),
      ),
    );
  }
}
