import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';

class ContactFunctionsRow extends StatelessWidget {
  final IconData icon;
  final String functionName;
  const ContactFunctionsRow(
      {super.key, required this.icon, required this.functionName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: contactFunctionBackgroundColor),
          child: Icon(
            icon,
            size: 25,
            color: contactFunctionButtonColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          functionName,
          style:
              const TextStyle(color: contactFunctionButtonColor, fontSize: 18),
        )
      ],
    );
  }
}
