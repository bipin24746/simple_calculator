import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiplyButtons extends StatefulWidget {
  const MultiplyButtons({super.key});

  @override
  State<MultiplyButtons> createState() => _MultiplyButtonsState();
}

class _MultiplyButtonsState extends State<MultiplyButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {}, child: Icon(CupertinoIcons.multiply)),
    );
  }
}
