import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({super.key, required this.title});

  final String title;

  @override
  State<MyGridView> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyGridView> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<Container> listBox() {
    List<Container> names = [];
    for (int i = 0; i < 20; i++) {
      var kon = Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[100],
        child: const Text("Boks ye ye ye"),
      );
      names.add(kon);
    }
    return names;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: listBox(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}