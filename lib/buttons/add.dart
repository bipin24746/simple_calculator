import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final int num1;
  final int num2;
  final Function(String) setResult;
  const AddButton({
    super.key,
    required this.num1,
    required this.num2,
    required this.setResult,
  });
  void addition() {
    String result = (num1 + num2).toString();
    setResult(result);
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
