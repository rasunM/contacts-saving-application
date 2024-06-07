import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';

class SavedLocationBar extends StatelessWidget {
  final String imageName;
  final String locationName;
 
  const SavedLocationBar({super.key, required this.imageName, required this.locationName,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: const BoxDecoration(
        color: saveToLocationColor,
      ),
      child: Row(
        children: [
          Text(
            "Save to",
            style:
                TextStyle(color: whiteColor.withOpacity(0.9), fontSize: 15.5),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: kBackgroundColor,
              border: Border.all(color: whiteColor, width: 0.2),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 7,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 7, bottom: 7),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        imageName,
                        width: 26,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                   Text(
                    locationName,
                    style:const TextStyle(
                        color: whiteColor,
                        fontSize: 15.8,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Icon(
                    Icons.arrow_drop_down_outlined,
                    color: whiteColor,
                  )
                ],
              ),
            ),
          )
          //DropdownButtonFormField(items: const [], onChanged: (obj) {})
        ],
      ),
    );
  }
}
