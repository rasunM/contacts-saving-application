import 'dart:math';

import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/models/create_contact_model.dart';

class ContactsListDisplay extends StatelessWidget {
  const ContactsListDisplay(
      {super.key,
      required this.contactList,
      required this.index,
      required this.colorPallet,
      required this.searchingItem});

  final List<ContactModelCustom> contactList;
  final int index;
  final List<Color> colorPallet;
  final bool searchingItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          if (searchingItem)
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.transparent,
              ),
              child: Text(
                contactList[index].contactName.substring(0, 1).toUpperCase(),
                style: TextStyle(
                    color: index != 0
                        ? contactList[index - 1]
                                    .contactName
                                    .substring(0, 1)
                                    .toUpperCase() ==
                                contactList[index]
                                    .contactName
                                    .substring(0, 1)
                                    .toUpperCase()
                            ? Colors.transparent
                            : blueColor
                        : blueColor,
                    fontSize: 23),
              ),
            ),
          SizedBox(
            width: searchingItem ? 40 : 7,
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: colorPallet[Random().nextInt(colorPallet.length)],
            ),
            child: Center(
              child: Text(
                contactList[index].contactName.substring(0, 1).toUpperCase(),
                style: const TextStyle(color: Colors.black, fontSize: 23),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            contactList[index].contactName,
            style: TextStyle(
              color: !searchingItem ? cSeaBlueColor : whiteColor,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
