import 'package:flutter/material.dart';
import 'package:xiaomi_contact_app/constants/colors.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/data/contact_data.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/models/create_contact_model.dart';
import 'package:xiaomi_contact_app/create%20new%20contact%20page/screens/create_contact_page.dart';
import 'package:xiaomi_contact_app/home%20page/widgets/contact_list_homepage_display_menu.dart';
import 'package:xiaomi_contact_app/home%20page/widgets/search_bar.dart';
import 'package:xiaomi_contact_app/home%20page/widgets/sorting_row.dart';
import 'package:xiaomi_contact_app/searching%20screen/search_bar_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final contactList = ContactDataCustom.contactList;
  final colorPallet = ColorPaletForContacts.colorPaletContact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 30, 15, 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomSearchContainer(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const SearchBarCustom(),
                    ),
                  );
                },
              ),
              const SortingRow(),
              if (contactList.isNotEmpty)
                for (int index = 0; index < contactList.length; index++)
                  ContactsListDisplay(
                    contactList: contactList,
                    index: index,
                    colorPallet: colorPallet,
                    searchingItem: true,
                  )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final ContactModelCustom? contactInformation = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const CreateNewContactPage(),
            ),
          );

          if (contactInformation != null) {
            setState(() {
              contactList.add(contactInformation);
              contactList
                  .sort((a, b) => a.contactName.compareTo(b.contactName));
            });
          }
        },
        backgroundColor: Colors.blue[700]!.withOpacity(0.8),
        child: Icon(
          Icons.add,
          size: 28,
          color: whiteColor.withOpacity(1),
        ),
      ),
    );
  }
}
