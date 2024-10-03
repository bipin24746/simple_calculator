import 'package:flutter/material.dart';
import 'package:simple_calculator/buttons/add.dart';
import 'package:simple_calculator/buttons/clear.dart';
import 'package:simple_calculator/buttons/division.dart';
import 'package:simple_calculator/buttons/multiply.dart';
import 'package:simple_calculator/buttons/subtract.dart';

class Textbox extends StatefulWidget {
  const Textbox({super.key});

  @override
  State<Textbox> createState() => _TextboxState();
}

class _TextboxState extends State<Textbox> {
  TextEditingController num1 = TextEditingController();

  TextEditingController num2 = TextEditingController();
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
                    child: TextFormField(
                      controller: num1, // Attach the TextEditingController here
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.all(16), // Padding inside the text field
                        border: OutlineInputBorder(
                          // Adds a border with rounded corners
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText:
                            'Enter a Number', // Hint text inside the field
                      ),
                      keyboardType:
                          TextInputType.number, // Set the input type to numbers
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
                child: TextFormField(
                  controller: num2, // Attach the TextEditingController here
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.all(16), // Padding inside the text field
                    border: OutlineInputBorder(
                      // Adds a border with rounded corners
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'Enter a Number', // Hint text inside the field
                  ),
                  keyboardType:
                      TextInputType.number, // Set the input type to numbers
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
                      num1Controller: num1,
                      num2Controller: num2,
                      setResult: setResult,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SubtractButton(
                    num1Controller: num1,
                    num2Controller: num2,
                    setResult: setResult,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MultiplyButtons(
                    num1Controller: num1,
                    num2Controller: num2,
                    setResult: setResult,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DivisionButton(
                    num1Controller: num1,
                    num2Controller: num2,
                    setResult: setResult,
                  ),
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
            ),
            SizedBox(
              height: 20,
            ),
            Clear(
              num1Controller: num1,
              num2Controller: num2,
              setResult: setResult,
            )
          ],
        ),
      ),
    );
  }
}
