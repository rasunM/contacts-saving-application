import 'package:xiaomi_contact_app/create%20new%20contact%20page/models/save_location_model.dart';

class SaveLocationDataCustom {
  static final List<SaveLocationModelCustom> dataList =
      <SaveLocationModelCustom>[
    SaveLocationModelCustom(
        imageName: "assests/images/firefox.png",
        locationName: "FireFox",
        description: "FireFox Account"),
    SaveLocationModelCustom(
        imageName: "assests/images/google.jpeg",
        locationName: "Google",
        description: "Google Account"),
    SaveLocationModelCustom(
        imageName: "assests/images/whatsapp.jpeg",
        locationName: "WhatsApp",
        description: "WhatsApp Account"),
    SaveLocationModelCustom(
      imageName: "assests/images/avatar.jpg",
      locationName: "Custom",
      description: "Custom account details",
    )
  ];
}
