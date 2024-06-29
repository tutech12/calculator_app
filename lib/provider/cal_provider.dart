import 'package:calculatorapp/views/formatter.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier{
  final
  compController = TextEditingController();
  RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
  String Function(Match) mathFunc = (Match match) => '${match[1]},';
  String str='';
  String strdemo='';

  setValue(String value){
    String str = compController.text;


    switch(value){
      case "C":
        compController.clear();
        break;
      case "AC":
        compController.text=str.substring(0,str.length-1);
        break;
      case "X":
        compController.text+='*';
        break;
      case "=":
        compute();
        break;
      default:
        // strdemo= compController.text;
        strdemo=str.replaceAll(',', '')+value;
        // print(strdemo);
        if(strdemo.length>3){
           str =  strdemo.replaceAllMapped(reg, mathFunc);
          compController.text=str;
          // print(str);
        }else{
          compController.text=strdemo;
        }

        //  print(strdemo);



    }
  }

   compute() {
    if(strdemo.isNotEmpty){
      String text = compController.text.replaceAll(',', '');

      compController.text=text.interpret().toString();
    }


  }

  @override
  void dispose(){
    super.dispose();
    compController.dispose();
  }


}


