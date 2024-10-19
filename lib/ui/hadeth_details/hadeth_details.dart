import 'package:flutter/material.dart';
import 'package:islami/ui/home/ahadeth/hadeth_tab.dart';

class HadethDetails extends StatelessWidget {
  static const String routName = 'hadethScreen';

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/homeScreen.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadeth.title,style: TextStyle( fontSize: 20),),
          backgroundColor: Colors.transparent,
        ),
        body: Card(
            shape:
               Theme.of(context).cardTheme.shape,
            elevation: Theme.of(context).cardTheme.elevation,
            margin: Theme.of(context).cardTheme.margin,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SingleChildScrollView(
                      child: Text(
                        textAlign: TextAlign.center,
                        hadeth.content,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
