import 'package:flutter/material.dart';
import 'package:islami/ui/home/ahadeth/hadeth_tab.dart';
import 'package:islami/ui/home/quran/quran_tab.dart';
import 'package:islami/ui/home/radio/radio_tab.dart';
import 'package:islami/ui/home/settings/settings_tab.dart';
import 'package:islami/ui/home/tasbeh/tasbeh_tab.dart';
import 'package:islami/ui/providers/theme_provider.dart';
import 'package:islami/ui/translation.dart';
import 'package:provider/provider.dart';




class HomeScreen extends StatefulWidget {
  static const String routName = 'homeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs=[QuranTab(),TasbehTab(),HadethTab(),RadioTab(),SettingsTab()];
int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider=Provider.of<ThemeProvider>(context);
    bool isDark=themeProvider.isDarkEnabled();
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: isDark?AssetImage(
                'assets/images/dark bg.png',
              ):AssetImage(
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
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran-quran-svgrepo-com.png'),size: 35,),label: getTranslation(context).ahdethTab,backgroundColor: Theme.of(context).colorScheme.primary),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),label:getTranslation(context).radioTab,backgroundColor: Theme.of(context).colorScheme.primary),
          BottomNavigationBarItem(icon: Icon(Icons.settings,size: 35,),label: getTranslation(context).settingsTab,backgroundColor: Theme.of(context).colorScheme.primary)
        ] ),
        body:tabs[selectedIndex]
      ),
    );
  }

}
