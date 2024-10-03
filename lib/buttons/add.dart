import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final TextEditingController num1Controller;
  final TextEditingController num2Controller;
  final Function(String) setResult;
  const AddButton({
    super.key,
    required this.num1Controller,
    required this.num2Controller,
    required this.setResult,
  });
  void addition() {
    try {
      int num1 = int.parse(num1Controller.text);
      int num2 = int.parse(num2Controller.text);
      String result = (num1 + num2).toString();
      setResult(result);
    } catch (e) {
      setResult("invalid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        addition();
      },
      child: Icon(Icons.add),
    );
  }
}
