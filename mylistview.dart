import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key, required this.title});

  final String title;

  @override
  State<MyListView> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyListView> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<Container> listName() {
    List<Container> names = [];
    for(int i=0; i<200; i++) {
      var kon = Container(
        height: 50,
        color: Colors.amber[600],
        child: Center(child: Text('Nama pemain ke: $i')),
      ); // Container
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
      ), // AppBar
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: listName(),
      ), // ListView
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods. // FloatingActionButton
    ); // Scaffold
  }
}