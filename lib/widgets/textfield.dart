import 'package:flutter/material.dart';

class CustomTextFlied extends StatelessWidget {
  const CustomTextFlied({
    super.key,
    required this.inputNumbers,
  });

  final TextEditingController inputNumbers;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.end,
        controller: inputNumbers,
        decoration: InputDecoration(
          counterText: '',
        ),
        showCursor: true,
        readOnly: true);
  }
}
