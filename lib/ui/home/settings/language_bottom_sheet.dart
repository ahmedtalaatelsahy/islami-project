import 'package:flutter/material.dart';
import 'package:islami/ui/style/theme.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: selecteditem(context, 'English')
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,),
          child: unSelectedItem(context, 'العربية')
        ),
      ],
    );
  }
  Widget selecteditem(BuildContext context,String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(color: MyTheme.lightPrimary),

        ),
        Icon(Icons.check)
      ],
    );
  }
  Widget unSelectedItem(BuildContext context,String text){
    return Text(
      'العربية',
      style: Theme.of(context).textTheme.titleSmall,
    );
  }
}
