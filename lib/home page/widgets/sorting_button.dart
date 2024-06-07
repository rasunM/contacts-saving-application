import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';

class SortingButtonCustom extends StatefulWidget {
  const SortingButtonCustom({super.key});

  @override
  State<SortingButtonCustom> createState() => _SortingButtonCustomState();
}

class _SortingButtonCustomState extends State<SortingButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Icon(
        Icons.sort,
        color: whiteColor,
      ),
    );
  }
}
