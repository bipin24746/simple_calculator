import 'package:flutter/material.dart';
import 'package:simple_calculator/buttons/add.dart';
import 'package:simple_calculator/buttons/division.dart';
import 'package:simple_calculator/buttons/multiply.dart';
import 'package:simple_calculator/buttons/subtract.dart';

class Textbox extends StatefulWidget {
  const Textbox({super.key});

  @override
  State<Textbox> createState() => _TextboxState();
}

class _TextboxState extends State<Textbox> {
  int num1 = 10;
  int num2 = 20;
  String result = 'result';
  void setResult(String newResult) {
    setState(() {
      result = newResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text('$num1'),
                    ))
                // TextFormField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //   ),
                //   keyboardType: TextInputType.number,
                // ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('$num2'),
                )),
            // Column(
            //   children: [
            //     TextFormField(
            //       decoration: InputDecoration(
            //         border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(20)),
            //       ),
            //       keyboardType: TextInputType.number,
            //     ),

            //   ],
            // ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AddButton(
                      num1: num1,
                      num2: num2,
                      setResult: setResult,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SubtractButton(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MultiplyButtons(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DivisionButton(),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                          10.0), // Adds some padding inside the box
                      child: Text("$result"),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
