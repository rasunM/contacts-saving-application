import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/data/save_location_data.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/models/save_location_model.dart';

class CustomDropDownMenu extends StatelessWidget {
  final Function(SaveLocationModelCustom) onItemSelected;
  const CustomDropDownMenu({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    final dataSet = SaveLocationDataCustom.dataList;

    return Container(
      decoration: const BoxDecoration(
        color: kBackgroundColor,
        border: Border(
          bottom: BorderSide(color: greyColor, width: 0.5),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: 100 * dataSet.length.toDouble() - 60,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return customCardOfLocation(
              imageName: dataSet[index].imageName,
              locationName: dataSet[index].locationName,
              description: dataSet[index].description,
              onTap: () {
                onItemSelected(dataSet[index]);
              });
        },
        itemCount: dataSet.length,
      ),
    );
  }

  Widget customCardOfLocation({
    required String imageName,
    required String locationName,
    required String description,
    required void Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    imageName,
                    width: 40,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locationName,
                      style: const TextStyle(
                        color: whiteColor,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      description,
                      style: TextStyle(color: greyColor.shade500),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.info_outline,
              color: whiteColor,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
