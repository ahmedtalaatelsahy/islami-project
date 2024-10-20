import 'package:flutter/material.dart';

class verse_content extends StatelessWidget {
  int index;
  String content;
  verse_content(this.content,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
    },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          "$content (${index+1})",textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
