import 'package:flutter/material.dart';
import 'package:islami/ui/providers/language_provider.dart';
import 'package:islami/ui/style/theme.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);
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
                    localeProvider.changSettings('en');
                  });
                },
                child: localeProvider.currentLocal == 'en'
                    ? selecteditem(context, 'English')
                    : unSelectedItem(context, 'English'))),
        Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            child: InkWell(
                onTap: () {
                  setState(() {
                    localeProvider.changSettings('ar');
                  });
                },
                child: localeProvider.currentLocal == 'ar'
                    ? selecteditem(context, 'العربية')
                    : unSelectedItem(context, 'العربية'))),
      ],
    );
  }

  Widget selecteditem(BuildContext context, String text) {
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
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
