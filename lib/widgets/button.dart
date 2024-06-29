import 'package:calculatorapp/Static%20Methods/values/colors.dart';
import 'package:calculatorapp/Static%20Methods/values/dimens.dart';
import 'package:calculatorapp/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.label,
  });

  final String label;


  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {

       Provider.of<CalculatorProvider>(context,listen: false).setValue(label);
      },
      child: Container(
        height: 65,
        width: 65,
        child: Center(
            child: Text(
              label,
              style: TextStyle(
                  fontSize: Dim().d36,
                  fontWeight: FontWeight.bold,
                  color: Clr().white),
            )),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/assets/btnBG.png')),
        ),
      ),
    );
  }
}