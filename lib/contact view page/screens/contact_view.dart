import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';
import 'package:xiaomi_contact_app/contact%20view%20page/widget/app_bar_row.dart';
import 'package:xiaomi_contact_app/contact%20view%20page/widget/contact_avatar_display.dart';
import 'package:xiaomi_contact_app/contact%20view%20page/widget/contact_functions.dart';
import 'package:xiaomi_contact_app/contact%20view%20page/widget/contact_view.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/data/contact_data.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/screens/create_contact_page.dart';
import 'package:xiaomi_contact_app/home%20page/screens/homepage.dart';

class ContactViewCustom extends StatefulWidget {
  final int index;
  final void Function()? previousPageOnPressed;

  const ContactViewCustom({
    super.key,
    required this.index,
    this.previousPageOnPressed,
  });

  @override
  State<ContactViewCustom> createState() => _ContactViewCustomState();
}

class _ContactViewCustomState extends State<ContactViewCustom> {
  @override
  Widget build(BuildContext context) {
    final contactList = ContactDataCustom.contactList;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 25),
        child: Column(
          children: [
            ContactDetailsPageAppBar(
              onPressedPreviousPage: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              onPressedEditInfo: () async {
                final editedContactModel = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => CreateNewContactPage(
                      contactModel: contactList[widget.index],
                    ),
                  ),
                );

                setState(() {
                  if (editedContactModel != null) {
                    contactList[widget.index] = editedContactModel;
                  }
                });
              },
            ),
            const SizedBox(
              height: 23,
            ),
            AvatarImageCustom(
              color: contactList[widget.index].contactBGColor,
              letter: contactList[widget.index]
                  .contactName
                  .substring(0, 1)
                  .toUpperCase(),
            ),
            const SizedBox(
              height: 23,
            ),
            Text(
              contactList[widget.index].contactName,
              style: const TextStyle(color: whiteColor, fontSize: 30),
            ),
            const SizedBox(
              height: 23,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContactFunctionsRow(
                  icon: Icons.call_outlined,
                  functionName: "Call",
                ),
                ContactFunctionsRow(
                  icon: Icons.message_outlined,
                  functionName: "Text",
                ),
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            ContactInformationCard(
              mobileNumber: contactList[widget.index].phoneNumber,
              emailAddress: contactList[widget.index].emailAddress,
            ),
          ],
        ),
      ),
    );
  }
}
