import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';

class ContactDetailsPageAppBar extends StatelessWidget {
  final void Function() onPressedPreviousPage;
  final void Function() onPressedEditInfo;
  const ContactDetailsPageAppBar(
      {super.key, required this.onPressedPreviousPage, required this.onPressedEditInfo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onPressedPreviousPage,
          icon: const Icon(
            Icons.arrow_back,
            color: greyColor,
            size: 25,
          ),
        ),
        Row(
          children: [
            IconButton(
              onPressed: onPressedEditInfo,
              icon: const Icon(
                Icons.edit_outlined,
                color: greyColor,
                size: 25,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: greyColor,
                size: 25,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
