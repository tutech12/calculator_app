import 'package:calculatorapp/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/homepage.dart';

Future<void> main() async {

  await Future.delayed(const Duration(seconds: 3));
  runApp(
    ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        // builder: (context,child){
        //   return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), child: child!);
        // },
        debugShowCheckedModeBanner: false,
        home:  homePage(),
      ),
    ),
  );
}