import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubtractButton extends StatefulWidget {
  const SubtractButton({super.key});

  @override
  State<SubtractButton> createState() => _SubtractButtonState();
}

class _SubtractButtonState extends State<SubtractButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: () {}, child: Icon(CupertinoIcons.minus)),
    );
  }
}
