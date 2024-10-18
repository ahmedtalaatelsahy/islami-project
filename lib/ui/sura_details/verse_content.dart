import 'package:flutter/material.dart';

class verse_content extends StatelessWidget {
  int index;
  String content;
  verse_content(this.content,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
    },
      child: Text(
        "$content (${index+1})",textDirection: TextDirection.rtl,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
