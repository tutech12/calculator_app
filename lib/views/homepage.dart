import 'package:calculatorapp/Static%20Methods/manage/btnTxt.dart';
import 'package:calculatorapp/Static%20Methods/values/colors.dart';
import 'package:calculatorapp/Static%20Methods/values/dimens.dart';
import 'package:calculatorapp/Static%20Methods/values/styles.dart';
import 'package:calculatorapp/provider/cal_provider.dart';
import 'package:calculatorapp/widgets/button.dart';
import 'package:calculatorapp/widgets/cal_button.dart';
import 'package:calculatorapp/widgets/widgets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:function_tree/function_tree.dart';
import 'package:intl/intl.dart';
import 'package:calculatorapp/widgets/textfield.dart';
import 'package:provider/provider.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  TextEditingController inputNumbers = TextEditingController();



  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .sizeOf(context)
        .height;
    return Consumer<CalculatorProvider>(
        builder: (context, provider, _) {
          return Scaffold(
              backgroundColor: Clr().white,
              body: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Clr().black)),
                    child: CustomTextFlied(
                      inputNumbers: provider.compController,
                    ),
                    height: 150,
                    width: 450,
                  ),
                  Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  4, (index) => buttonList[index]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:
                              List.generate(
                                  4, (index) => buttonList[index + 4]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:
                              List.generate(
                                  4, (index) => buttonList[index + 8]),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children:
                                      List.generate(
                                          3, (index) => buttonList[index + 12]),
                                    ),
                                    SizedBox(height: Dim().d16,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children:
                                      List.generate(
                                          3, (index) => buttonList[index + 15]),
                                    ),

                                  ],),
                                ),
                                SizedBox(width: Dim().d20,),
                                CalculatorButton()
                              ],
                            )
                          ]),
                      height: screenHeight * 0.7,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25, vertical: 30),
                      decoration: BoxDecoration(
                          color: Clr().white,
                          borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))))
                ],
              )
            // Column(children: [
            //   Container(
            //     alignment: Alignment.bottomRight,
            //     decoration: BoxDecoration(
            //         shape: BoxShape.rectangle,
            //         border: Border.all(color: Clr().black)),
            //     child: TextFormField(
            //         keyboardType: TextInputType.number,
            //         textAlign: TextAlign.end,
            //         controller: inputNumbers,
            //         decoration: InputDecoration(
            //           counterText: '',
            //         ),
            //         showCursor: true,
            //         readOnly: true),
            //     height: 150,
            //     width: 450,
            //   ),
            //   SizedBox(height: 20,),
            //   // SizedBox(
            //   //   child: Row(children: [
            //   //     ElevatedButton(
            //   //         onPressed: () {
            //   //           appendCharacters("1000000000000000");
            //   //
            //   //
            //   //
            //   //
            //   //
            //   //
            //   //
            //   //         },
            //   //         child: Text(
            //   //           n
            //   //         )),
            //   //     SizedBox(
            //   //       width: Dim().d4,
            //   //     ),
            //   //     ElevatedButton(
            //   //         onPressed: () {
            //   //           appendCharacters(allText.btn2Value);
            //   //         },
            //   //         child: Text('0')),
            //   //     SizedBox(
            //   //       width: Dim().d4,
            //   //     ),
            //   //     ElevatedButton(
            //   //         onPressed: () {
            //   //           appendCharacters(allText.btn3Value);
            //   //         },
            //   //         child: Text('3')),
            //   //     ElevatedButton(
            //   //         onPressed: () {
            //   //           inputNumbers.text="";
            //   //           newTxt='';
            //   //         },
            //   //         child: Text('AC')),
            //   //   ]),
            //   // )
            //
            // ]),
          );
        }
    );
  }

  void appendCharacters(index) {
    // print(index);
    // if (value == 'AC') {
    //   inputNumbers.text = '';
    // }
    // newTxt = newTxt + value

    //
    // String formattedData = formatAmount(newTxt);
    // inputNumbers.text = formattedData;
    // String newText = newText + value;
    // String newTextF = myFormat.format(int.parse(newText));
    // print(newTextF);
    // var newValue = inputNumbers.value.copyWith(
    //   text: newTextF,
    //   selection: TextSelection.collapsed(
    //     offset: newTextF.length,
    //     //offset to Last Character
    //   ),
    //   composing: TextRange.empty,
    // );

    // inputNumbers.value = newValue;
    //   switch (index) {
    //     case 0:
    //       {
    //         inputNumbers.text = '';
    //         newTxt = '';
    //         symbolMath = false;
    //       }
    //       break;
    //     case 1:
    //       {
    //         if (inputNumbers.text != null && inputNumbers.text.length > 0) {
    //           inputNumbers.text =
    //               inputNumbers.text.substring(0, inputNumbers.text.length - 1);
    //           newTxt = inputNumbers.text;
    //         }
    //       }
    //       break;
    //
    //     case 2:
    //       {}
    //       break;
    //
    //     case 3:
    //       {
    //         newTxt = newTxt + allText.btnDiv;
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //     case 4:
    //       {
    //         newTxt = newTxt + allText.btn7Value;
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //     case 5:
    //       {
    //         newTxt = newTxt + allText.btn8Value;
    //         print(symbolMath);
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //     case 6:
    //       {
    //         newTxt = newTxt + allText.btn9Value;
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //
    //     case 7:
    //       {
    //         newTxt = newTxt + allText.btnMul;
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //
    //     case 8:
    //       {
    //         newTxt = newTxt + allText.btn4Value;
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //     case 9:
    //       {
    //         newTxt = newTxt + allText.btn5Value;
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //     case 10:
    //       {
    //         newTxt = newTxt + allText.btn6Value;
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //     case 11:
    //       {
    //         if (inputNumbers.text.isEmpty) {
    //           newTxt = newTxt + allText.btnSub;
    //         } else if (inputNumbers.text.characters.last == allText.btnSub) {
    //           return;
    //         } else {
    //           newTxt = newTxt + allText.btnSub;
    //
    //           String? formattedData = formatAmount(newTxt);
    //           if (formattedData == null) {
    //             inputNumbers.text = newTxt;
    //           }
    //           inputNumbers.text = formattedData!;
    //         }
    //       }
    //       break;
    //     case 12:
    //       {
    //         newTxt = newTxt + allText.btn1Value;
    //         print(newTxt);
    //         if (symbolMath == true) {
    //           value1 = newTxt;
    //           print(value1);
    //         }
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //     case 13:
    //       {
    //         newTxt = newTxt + allText.btn2Value;
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //     case 14:
    //       {
    //         newTxt = newTxt + allText.btn3Value;
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //
    //     case 15:
    //       {
    //         symbolMath = true;
    //         // String symbol=allText.btnPlus;
    //         newTxt = newTxt + allText.btnPlus;
    //
    //         // value1 = newTxt.substring(0,newTxt.length-1);
    //         // print(value1);
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //
    //     case 16:
    //       {
    //         newTxt = newTxt + allText.btnPercentage;
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //
    //     case 17:
    //       {
    //         newTxt = newTxt + allText.btn0Value;
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //
    //     case 18:
    //       {
    //         newTxt = newTxt + allText.btnDot;
    //
    //         String? formattedData = formatAmount(newTxt);
    //         if (formattedData == null) {
    //           inputNumbers.text = newTxt;
    //         }
    //         inputNumbers.text = formattedData!;
    //       }
    //       break;
    //
    //     default:
    //       {
    //         // int num1= int.parse(value1);
    //
    //         String demotxt = newTxt.interpret().toString();
    //         inputNumbers.text = demotxt;
    //         newTxt = demotxt;
    //         // int n2= demotxt.indexOf('+');
    //         //  int v1= int.parse(newTxt.characters.last);
    //         //  int v2= int.parse(newTxt.characters.first);
    //         // print(v1);
    //         // print(v2);
    //         // inputNumbers.text= add(v1, v2).toString();
    //         // newTxt=add(v1, v2).toString();
    //         // print(n2);
    //         // int num2 =int.parse(newTxt.substring(n2,newTxt.length));
    //         // print(num1);
    //         // print(num2);
    //         // int sum = num1 + num2;
    //         // print(sum);
    //         // inputNumbers.text='';
    //         // newTxt='';
    //         // newTxt=sum.toString();
    //         // inputNumbers.text=sum.toString();
    //
    //         // inputNumbers.clear();
    //         // if (inputNumbers.text != null && inputNumbers.text.length > 0) {
    //         //   inputNumbers.text = inputNumbers.text.substring(0, inputNumbers.text.length - 1);
    //         // }
    //       }
    //       break;
    //   }
    // }


  }


}
