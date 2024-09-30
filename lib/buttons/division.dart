import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DivisionButton extends StatefulWidget {
  const DivisionButton({super.key});

  @override
  State<DivisionButton> createState() => _DivisionButtonState();
}

class _DivisionButtonState extends State<DivisionButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          ElevatedButton(onPressed: () {}, child: Icon(CupertinoIcons.divide)),
    );
  }
}
