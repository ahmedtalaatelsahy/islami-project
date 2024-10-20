import 'package:flutter/material.dart';
import 'package:islami/ui/translation.dart';

class TasbehTab extends StatefulWidget {
  TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int index=0;
  double angle=0;
  List<String> doaa=['سبحان الله','الحمد لله','الله اكبر'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/head of seb7a.png",
                  height: 100,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 75.0),
              child: Align(
                child: InkWell(
                    onTap: () {
                      counterIncrement();
                    },
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                        'assets/images/body of seb7a.png',
                      ),
                    )),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),SizedBox(height: 25,),
        Text(
          getTranslation(context).sebhaCount,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),SizedBox(height: 25,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color:  Theme.of(context).colorScheme.primary,),
          width: 69,height: 81,

          child: Align(alignment: Alignment.center,
            child: Text(
              counter.toString(),
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 25),
            ),
          ),
        ),SizedBox(height: 25,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color:  Theme.of(context).colorScheme.primary,),
          width: 137,height: 51,

          child: Align(alignment: Alignment.center,
            child: Text(
              doaa[index],
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 25),
            ),
          ),
        ),
      ],
    );
  }
  int counter = 0;
  void counterIncrement() {
    angle+=10;
    if(counter==33){
counter=0;
index++;
    }
    if(index>=doaa.length){
      index=0;
    }
    else{
      counter++;
    }
    setState(() {
    });
  }
}
