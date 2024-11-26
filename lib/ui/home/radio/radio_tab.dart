import 'package:flutter/material.dart';
import 'package:islami/ui/providers/theme_provider.dart';
import 'package:islami/ui/style/theme.dart';
import 'package:islami/ui/translation.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {

  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider=Provider.of<ThemeProvider>(context);
    return Column(
      children: [
        SizedBox(
          height: 150,
        ),
        Image.asset("assets/images/radio_screen.png"),
        SizedBox(
          height: 20,
        ),
        Text(
          getTranslation(context).quranKarem,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(onTap: (){

            },
                child: Icon(Icons.skip_previous,
                    size: 40, color: themeProvider.isDarkEnabled()?MyTheme.darkSecondary:MyTheme.lightPrimary)),
            SizedBox(
              width: 45,
            ),
            InkWell(onTap: (){

            },
                child: Icon(Icons.play_arrow,
                    size: 60, color: themeProvider.isDarkEnabled()?MyTheme.darkSecondary:MyTheme.lightPrimary)),
            SizedBox(
              width: 45,
            ),
            InkWell(onTap: (){

            },
                child: Icon(
              Icons.skip_next,
              size: 40,
              color: themeProvider.isDarkEnabled()?MyTheme.darkSecondary:MyTheme.lightPrimary
            ))
          ],
        )
      ],
    );
  }
}
