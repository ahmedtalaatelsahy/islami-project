import 'package:flutter/material.dart';
import 'package:islami/ui/providers/theme_provider.dart';
import 'package:islami/ui/style/theme.dart';
import 'package:islami/ui/translation.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
            padding: const EdgeInsets.all(25.0),
            child: InkWell(
                onTap: () {
                  setState(() {
                    themeProvider.changeTheme(ThemeMode.light);
                  });
                },
                child: themeProvider.currentTheme == ThemeMode.light
                    ? selectedItem(context, getTranslation(context).light)
                    : unSelectedItem(context, getTranslation(context).light))),
        Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            child: InkWell(
                onTap: () {
                  setState(() {
                    themeProvider.changeTheme(ThemeMode.dark);
                  });
                },
                child: themeProvider.currentTheme==ThemeMode.dark?selectedItem(context, getTranslation(context).dark):unSelectedItem(context, getTranslation(context).dark))),
      ],
    );
  }

  Widget selectedItem(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: MyTheme.lightPrimary),
        ),
        Icon(Icons.check)
      ],
    );
  }

  Widget unSelectedItem(BuildContext context, String text) {
    return Row(
      children: [
        Text(
          getTranslation(context).dark,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
