import 'package:flutter/material.dart';
import 'package:todone/todone_app.dart';

void main() {
  runApp(const ToDoneApp());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("ToDone"),
      ),
      body: Center(child: Text("Hello, World!")),
    );
  }
}
