import 'package:xiaomi_contact_app/create%20new%20contact%20page/models/save_location_model.dart';

class ContactModelCustom {
  String contactName;
  int phoneNumber;
  String emailAddress;
  SaveLocationModelCustom locationType;

  ContactModelCustom({
    required this.contactName,
    required this.phoneNumber,
    required this.locationType,
    required this.emailAddress
  });
}
