import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/home/ahadeth/hadeth_title.dart';
import 'package:islami/ui/style/theme.dart';
import 'package:islami/ui/translation.dart';


class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadeth = [];
@override
  void initState() {
    super.initState();
    readHdethFile();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                'assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png'),
          ],
        ),
        Divider(
          color: MyTheme.lightPrimary,
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getTranslation(context).ahadeth,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            )
          ],
        ),
        Divider(
          color: MyTheme.lightPrimary,
          thickness: 2,
        ),
        Expanded(
            child: allHadeth.isNotEmpty
                ? ListView.builder(
                    itemBuilder: (context, index) {
                      return HadethTitle(allHadeth[index]);
                    },
                    itemCount: allHadeth.length)
                : Center(
                    child: CircularProgressIndicator(),
                  ))
      ],
    );
  }

  void readHdethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> separatedAhadeth = fileContent.split('#');
    for (int i = 0; i < separatedAhadeth.length; i++) {
      String singleHatedth = separatedAhadeth[i];
      List<String> lines = singleHatedth.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeth h = Hadeth(title, content);
      allHadeth.add(h);
    }
    setState(() {

    });
  }
}

class Hadeth {
  String title;
  String content;
  Hadeth(this.title, this.content);
}
