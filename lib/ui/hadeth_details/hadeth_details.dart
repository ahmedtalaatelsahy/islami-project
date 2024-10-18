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
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            elevation: 30,
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Text(
                        textAlign: TextAlign.center,
                        hadeth.content,
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
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
