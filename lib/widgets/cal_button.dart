import 'package:calculatorapp/Static%20Methods/values/colors.dart';
import 'package:calculatorapp/Static%20Methods/values/dimens.dart';
import 'package:calculatorapp/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context,listen: false).setValue('=');
      },
      child: Container(
        child: Center(child: Text('=',style: TextStyle(
            fontSize: Dim().d36,
            fontWeight: FontWeight.bold,
            color: Clr().white))),
        height: 130,
        width: 60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
            image:DecorationImage(image: AssetImage('lib/assets/btnBG.png'),fit: BoxFit.cover  )),

      ),
    );
  }
}