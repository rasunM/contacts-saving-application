import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';

class CustomSearchContainer extends StatelessWidget {
  final void Function() onTap;
  const CustomSearchContainer({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25,
          ),
          color: kSearchBarColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.search,
                  color: greyColor,
                  size: 21.5,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Search contacts",
                  style: TextStyle(color: greyColor, fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.more_vert,
                  color: greyColor,
                  size: 21.5,
                ),
                const SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "assests/images/avatar.jpg",
                    width: 32,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
