import 'package:flutter/material.dart';

class MyColumn extends StatefulWidget {
  const MyColumn({super.key, required this.title});

  final String title;

  @override
  State<MyColumn> createState() => _MyColumnState();
}

class _MyColumnState extends State<MyColumn> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Teks A $_counter',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Teks B',
            style: TextStyle(fontSize: 20),
          ),
          Image.asset(
            'Images/monyet.jpg',
            width: 120,
            height: 120,
          ),
          Image.asset(
            'Images/kucing.jpg',
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