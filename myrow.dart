import 'package:flutter/material.dart';

class MyRow extends StatefulWidget {
  const MyRow({super.key, required this.title});

  final String title;

  @override
  State<MyRow> createState() => _MyRowState();
}

class _MyRowState extends State<MyRow> {
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/kucing.jpg',
            width: 120,
            height: 120,
          ),
          Image.asset(
            'images/kucing.jpg',
            width: 120,
            height: 120,
          ),
          Image.asset(
            'images/kucing.jpg',
            width: 120,
            height: 120,
          ),
          Image.asset(
            'images/kucing.jpg',
            width: 120,
            height: 120,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}