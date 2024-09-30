import 'package:flutter/material.dart';
import 'package:simple_calculator/pages/textbox.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("simple Calculator"),
        backgroundColor: Colors.blue,
      ),
      body: Textbox(),
    );
  }
}
