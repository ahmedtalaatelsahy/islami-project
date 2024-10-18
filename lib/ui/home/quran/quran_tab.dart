import 'package:flutter/material.dart';
import 'package:islami/ui/home/quran/chapter_title.dart';

class QuranTab extends StatelessWidget {
  List<String> chapters=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
   QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("assets/images/Screenshot (1).png")],
        ),Divider(color: Theme.of(context).colorScheme.primary,thickness: 2,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [Text('suras names',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),)],
            )

          ],
        ),Divider(color: Theme.of(context).colorScheme.primary,thickness: 2,),
        Expanded(
          child: ListView.separated(
            itemCount: chapters.length,
            itemBuilder: (context, index) {
            return ChapterTitle(chapters[index],index);

          }, separatorBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: Divider(color: Theme.of(context).colorScheme.primary,thickness: 2,),
            );
            },),
        )
      ],
    );
  }
}
