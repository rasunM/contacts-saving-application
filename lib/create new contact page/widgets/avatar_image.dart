import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';

class AvatarImageWidget extends StatelessWidget {
  final String imageName;
  const AvatarImageWidget({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55.0),
      child: CircleAvatar(
        radius: 69,
        backgroundColor: whiteColor.withOpacity(0.15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Image.asset(
            imageName,
            width: 100,
          ),
        ),
      ),
    );
  }
}
