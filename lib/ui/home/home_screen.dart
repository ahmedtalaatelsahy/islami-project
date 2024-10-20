import 'package:flutter/material.dart';
import 'package:islami/ui/home/ahadeth/hadeth_tab.dart';
import 'package:islami/ui/home/quran/quran_tab.dart';
import 'package:islami/ui/home/radio/radio_tab.dart';
import 'package:islami/ui/home/tasbeh/tasbeh_tab.dart';
import 'package:islami/ui/translation.dart';




class HomeScreen extends StatefulWidget {
  static const String routName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs=[QuranTab(),TasbehTab(),HadethTab(),RadioTab()];
int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
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
            'Islamy',style: Theme.of(context).textTheme.titleMedium,
          ),

        ),

        bottomNavigationBar: BottomNavigationBar(currentIndex: selectedIndex, onTap: (index){
          setState(() {
            selectedIndex=index;
          });
        },
            items:[
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/moshaf_blue.png")),label: getTranslation(context).quranTab,backgroundColor: Theme.of(context).colorScheme.primary),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),label: getTranslation(context).sebhaTab,backgroundColor: Theme.of(context).colorScheme.primary),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran-quran-svgrepo-com.png')),label: getTranslation(context).ahdethTab,backgroundColor: Theme.of(context).colorScheme.primary),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),label:getTranslation(context).radioTab,backgroundColor: Theme.of(context).colorScheme.primary),

        ] ),
        body:tabs[selectedIndex]
      ),
    );
  }
}
