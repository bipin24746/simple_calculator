import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubtractButton extends StatelessWidget {
  final TextEditingController num1Controller;
  final TextEditingController num2Controller;
  final Function(String) setResult;
  const SubtractButton(
      {super.key,
      required this.num1Controller,
      required this.num2Controller,
      required this.setResult});
  void subtract() {
    try {
      int num1 = int.parse(num1Controller.text);
      int num2 = int.parse(num2Controller.text);
      String result = (num1 - num2).toString();
      setResult(result);
    } catch (e) {
      setResult("Invalud number");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            subtract();
          },
          child: Icon(CupertinoIcons.minus)),
    );
  }
}
