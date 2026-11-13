import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({super.key, required this.title});

  final String title;

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.deepOrange,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Text(
            'Halo, Container! $_counter',
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
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