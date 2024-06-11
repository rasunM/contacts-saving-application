import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/data/contact_data.dart';
import 'package:xiaomi_contact_app/home%20page/widgets/contact_list_homepage_display_menu.dart';

class SearchBarCustom extends StatefulWidget {
  
  const SearchBarCustom({super.key});

  @override
  State<SearchBarCustom> createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends State<SearchBarCustom> {
  TextEditingController searchController = TextEditingController();
  bool showCloseButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: searchController,
              onChanged: (value) {
                setState(() {
                  showCloseButton = searchController.text.isNotEmpty;
                });
              },
              style: TextStyle(
                color: whiteColor.withOpacity(0.9),
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: whiteColor.withOpacity(0.9),
                  ),
                ),
                suffixIcon: showCloseButton
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            searchController.clear();
                            showCloseButton = false;
                          });
                        },
                        icon: Icon(
                          Icons.close,
                          color: whiteColor.withOpacity(0.9),
                        ),
                      )
                    : null,
                hintText: "Search contacts",
                hintStyle: TextStyle(
                  color: whiteColor.withOpacity(0.9),
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 0.2, color: whiteColor),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 0.2, color: whiteColor),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            if (searchController.text.isNotEmpty)
              for (int index = 0;
                  index < ContactDataCustom.contactList.length;
                  index++)
                if (ContactDataCustom.contactList[index].contactName
                    .toLowerCase()
                    .contains(searchController.text.toLowerCase()))
                  ContactsListDisplay(
                  
                    contactList: ContactDataCustom.contactList,
            
                    index: index,
                    searchingItem: false,
                  ),
          ],
        ),
      ),
    );
  }
}
