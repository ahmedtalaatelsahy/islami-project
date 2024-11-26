import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/style/theme.dart';
import 'package:islami/ui/sura_details/verse_content.dart';


class SuraDetails extends StatefulWidget {
  static const routName = 'suraDetails';

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraDetailsArgs;
    if (verses.isEmpty) {
      readFileData(args.suraIndex);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/homeScreen.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            args.suraTitle,
          ),
        ),
        body: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            elevation: 30,
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
            child: verses.isNotEmpty
                ? ListView.separated(
                    separatorBuilder: (context, index) => Container(
                          height: 1,
                          width: double.infinity,
                          color: MyTheme.lightPrimary,
                          margin: EdgeInsets.symmetric(horizontal: 64),
                        ),
                    itemCount: verses.length,
                    itemBuilder: (context, index) {
                      return verse_content(verses[index], index);
                    })
                : Center(child: CircularProgressIndicator())),
      ),
    );
  }

  void readFileData(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${fileIndex + 1}.txt');
    List<String> lines = fileContent.trim().split('\n');

    setState(() {
      verses = lines;
    });
  }
}

class suraDetailsArgs {
  int suraIndex;
  String suraTitle;
  suraDetailsArgs(this.suraIndex, this.suraTitle);
}
