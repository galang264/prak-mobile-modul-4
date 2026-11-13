import 'package:flutter/material.dart';

class MyPadding extends StatefulWidget {
  const MyPadding({super.key, required this.title});

  final String title;

  @override
  State<MyPadding> createState() => _MyPaddingState();
}

class _MyPaddingState extends State<MyPadding> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
        Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Hello Padding! $_counter'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}