import 'package:flutter/material.dart';
import 'package:islami/ui/sura_details/sura_details.dart';

class ChapterTitle extends StatelessWidget {
  int index;
  String title;
  ChapterTitle(this.title,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      Navigator.pushNamed(context, SuraDetails.routName,arguments: suraDetailsArgs(index, title));
    },
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
