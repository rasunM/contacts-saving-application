import 'dart:math';

import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/models/save_location_model.dart';

class ContactModelCustom {
  String contactName;
  int phoneNumber;
  String emailAddress;
  SaveLocationModelCustom locationType;
  Color contactBGColor = ColorPaletForContacts.colorPaletContact[Random().nextInt(ColorPaletForContacts.colorPaletContact.length)];

  ContactModelCustom(
      {required this.contactName,
      required this.phoneNumber,
      required this.locationType,
      required this.emailAddress});
}
