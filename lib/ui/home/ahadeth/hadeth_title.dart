import 'package:flutter/material.dart';
import 'package:islami/ui/hadeth_details/hadeth_details.dart';
import 'package:islami/ui/home/ahadeth/hadeth_tab.dart';


class HadethTitle extends StatelessWidget {
Hadeth hadeth;
HadethTitle(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      Navigator.pushNamed(context, HadethDetails.routName,arguments:hadeth );
    },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
