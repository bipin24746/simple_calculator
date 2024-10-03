import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clear extends StatelessWidget {
  final TextEditingController num1Controller;
  final TextEditingController num2Controller;
  final Function(String) setResult;
  const Clear(
      {super.key,
      required this.num1Controller,
      required this.num2Controller,
      required this.setResult});

  void clearAll() {
    num1Controller.clear();
    num2Controller.clear();
    setResult("0");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            clearAll();
          },
          child: Text("C")),
    );
  }
}
