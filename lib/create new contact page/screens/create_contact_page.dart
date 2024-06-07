import 'package:flutter/material.dart';

import 'package:xiaomi_contact_app/create%20new%20contact%20page/data/save_location_data.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/models/create_contact_model.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/models/save_location_model.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/widgets/avatar_image.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/widgets/clear_all_button.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/widgets/custom_app_bar.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/widgets/drop_down_menu.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/widgets/saved_location_bar.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/widgets/text_field_custom.dart';

class CreateNewContactPage extends StatefulWidget {
  const CreateNewContactPage({
    super.key,
  });

  @override
  State<CreateNewContactPage> createState() => _CreateNewContactPageState();
}

class _CreateNewContactPageState extends State<CreateNewContactPage> {
  bool clicked = false;
  SaveLocationModelCustom selectedLocation = SaveLocationDataCustom.dataList[0];

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  bool nameControllerShowButton = false;
  bool emailControllerShowButton = false;
  bool phoneNumberControllerShowButton = false;

  bool nameControllerClicked = false;
  bool emailControllerClicked = false;
  bool phoneNumberControllerClicked = false;

  void _handleItemSelected(SaveLocationModelCustom location) {
    setState(() {
      selectedLocation = location;
      clicked = false; // Close dropdown after selection
    });
  }

  // save contact
  void _saveContact() {
    final content = ContactModelCustom(
      contactName: nameController.text,
      phoneNumber: int.parse(phoneNumberController.text),
      locationType: selectedLocation,
      emailAddress: emailController.text,
    );

    Navigator.pop(context, content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        saved: _saveContact,
        closed: () {
          Navigator.pop(context);
        },
      ).appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  clicked = !clicked;
                });
              },
              child: SavedLocationBar(
                imageName: selectedLocation.imageName,
                locationName: selectedLocation.locationName,
              ),
            ),
            SizedBox(
              child: Stack(
                children: [
                  Column(
                    children: [
                      AvatarImageWidget(
                        imageName: selectedLocation.imageName,
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      TextFieldCustom(
                        controller: nameController,
                        labelName: "Name",
                        icon: Icons.person_outline_outlined,
                        onChanged: (p0) {
                          setState(() {
                            p0.isEmpty
                                ? nameControllerShowButton = false
                                : nameControllerShowButton = true;
                          });
                        },
                        showCloseButton: nameControllerShowButton,
                        closeButtonAction: () {
                          setState(() {
                            nameController.clear();
                            nameControllerShowButton = false;
                          });
                        },
                        clickObject: () {
                          setState(() {
                            nameControllerClicked = true;
                            emailControllerClicked = false;
                            phoneNumberControllerClicked = false;
                            if (nameController.text.isNotEmpty) {
                              nameControllerShowButton = true;
                              phoneNumberControllerShowButton = false;
                              emailControllerShowButton = false;
                            }
                          });
                        },
                        clicked: nameControllerClicked,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCustom(
                        controller: phoneNumberController,
                        labelName: "Phone",
                        icon: Icons.call,
                        onChanged: (p0) {
                          setState(() {
                            p0.isEmpty
                                ? phoneNumberControllerShowButton = false
                                : phoneNumberControllerShowButton = true;
                          });
                        },
                        showCloseButton: phoneNumberControllerShowButton,
                        closeButtonAction: () {
                          setState(() {
                            phoneNumberController.clear();
                            phoneNumberControllerShowButton = false;
                          });
                        },
                        clickObject: () {
                          setState(() {
                            phoneNumberControllerClicked = true;
                            emailControllerClicked = false;
                            nameControllerClicked = false;
                            if (phoneNumberController.text.isNotEmpty) {
                              phoneNumberControllerShowButton = true;
                              nameControllerShowButton = false;
                              emailControllerShowButton = false;
                            }
                          });
                        },
                        clicked: phoneNumberControllerClicked,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCustom(
                        controller: emailController,
                        labelName: "Email",
                        icon: Icons.email,
                        onChanged: (p0) {
                          setState(() {
                            p0.isEmpty
                                ? emailControllerShowButton = false
                                : emailControllerShowButton = true;
                          });
                        },
                        showCloseButton: emailControllerShowButton,
                        closeButtonAction: () {
                          setState(() {
                            emailController.clear();
                            emailControllerShowButton = false;
                          });
                        },
                        clickObject: () {
                          setState(() {
                            phoneNumberControllerClicked = false;
                            emailControllerClicked = true;
                            nameControllerClicked = false;
                            if (emailController.text.isNotEmpty) {
                              emailControllerShowButton = true;
                              nameControllerShowButton = false;
                              phoneNumberControllerShowButton = false;
                            }
                          });
                        },
                        clicked: emailControllerClicked,
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      ClearAllButton(
                        cleared: () {
                          setState(() {
                            nameController.clear();
                            phoneNumberController.clear();
                            emailController.clear();

                            nameControllerShowButton = false;
                            phoneNumberControllerShowButton = false;
                            emailControllerShowButton = false;

                            nameControllerClicked = false;
                            phoneNumberControllerClicked = false;
                            emailControllerClicked = false;
                          });
                        },
                      ),
                    ],
                  ),
                  if (clicked)
                    CustomDropDownMenu(
                      onItemSelected: _handleItemSelected,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
