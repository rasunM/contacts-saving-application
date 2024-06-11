import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';

class ContactInformationCard extends StatelessWidget {
  final int mobileNumber;
  final String emailAddress;
  const ContactInformationCard(
      {super.key, required this.mobileNumber, required this.emailAddress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          left: 10,
          top: 10,
          right: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: contactDetialsCard,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Contact info",
              style: TextStyle(color: whiteColor, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            customCard(
                icon: Icons.call_outlined,
                contactInfoName: mobileNumber.toString(),
                contactInfoType: "Mobile"),
            const SizedBox(
              height: 15,
            ),
            if (emailAddress.isNotEmpty)
              customCard(
                  icon: Icons.email_outlined,
                  contactInfoName: emailAddress,
                  contactInfoType: "Email"),
            if (emailAddress.isNotEmpty)
              const SizedBox(
                height: 23,
              ),
          ],
        ),
      ),
    );
  }

  Widget customCard(
      {required IconData icon,
      required String contactInfoName,
      required String contactInfoType}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: whiteColor.withOpacity(0.85),
              size: 25,
            ),
            const SizedBox(
              width: 13,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contactInfoName,
                  style: TextStyle(
                      fontSize: 17, color: whiteColor.withOpacity(0.85)),
                ),
                Text(
                  contactInfoType,
                  style: TextStyle(
                      fontSize: 14.5, color: whiteColor.withOpacity(0.85)),
                )
              ],
            ),
          ],
        ),
        Icon(
          Icons.message_outlined,
          color: whiteColor.withOpacity(0.85),
          size: 25,
        )
      ],
    );
  }
}
