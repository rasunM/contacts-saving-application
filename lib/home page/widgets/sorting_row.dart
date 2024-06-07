import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';
import 'package:xiaomi_contact_app/home%20page/widgets/sorting_button.dart';

class SortingRow extends StatelessWidget {
  const SortingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: const Row(
              children: [
                Icon(
                  Icons.person_outline_outlined,
                  color: whiteColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "fdzmenuria@gmail.com",
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.1,
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  color: whiteColor,
                )
              ],
            ),
          ),
          const SortingButtonCustom()
        ],
      ),
    );
  }
}
