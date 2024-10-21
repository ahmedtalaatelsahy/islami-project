import 'package:flutter/material.dart';
import 'package:islami/ui/home/settings/theme_bottom_sheet.dart';

import 'language_bottom_sheet.dart';

class SettinsTab extends StatelessWidget {
  const SettinsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text(
                'Theme',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, top: 10, right: 13),
          child: InkWell(onTap: (){
            showThemeBottomSheet(context);
          },
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                'light',
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).colorScheme.primary),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.transparent,
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary,width: 2)),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text(
                'Language',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, top: 10, right: 13),
          child: InkWell(onTap: (){
            showLanguageBottomSheet(context);
          },
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                'English',
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).colorScheme.primary),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.transparent,
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary,width: 2) ),
            ),
          ),
        )
      ],
    );
  }
  void showThemeBottomSheet(BuildContext context){
    showModalBottomSheet(context: context,
        builder: (context) {
          return ThemeBottomSheet();
        },
    );
  }
  void showLanguageBottomSheet(BuildContext context){
    showModalBottomSheet(context: context,
      builder: (context) {
        return LanguageBottomSheet();
      },
    );
  }
}
