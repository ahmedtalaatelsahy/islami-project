
import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  String currentLocal ='en' ;
  void changSettings(String newLocal){
    currentLocal=newLocal;
    notifyListeners();
  }
  String getCurrentLocalText(){
    return currentLocal=='en'?'English':'العربية';
  }

}