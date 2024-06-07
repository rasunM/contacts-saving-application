import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/widgets/save_button.dart';

class CustomAppBar {
  final void Function() saved;
  final void Function() closed;

  const CustomAppBar({required this.saved, required this.closed});
  PreferredSizeWidget appBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      title: const Text(
        "Create contact",
        style: TextStyle(
          color: whiteColor,
          fontSize: 22,
          fontWeight: FontWeight.w400,
        ),
      ),
      leading: IconButton(
        onPressed:closed,
        icon: const Icon(
          Icons.close,
          color: whiteColor,
          size: 25,
        ),
      ),
      actions: [
        SaveButtonCustom(
          saved: saved,
        ),
        const SizedBox(
          width: 17,
        ),
        const Icon(
          Icons.more_vert,
          color: whiteColor,
          size: 30,
        ),
        const SizedBox(
          width: 5,
        )
      ],
    );
  }
}
