import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  const MyTable({super.key, required this.title});

  final String title;

  @override
  State<MyTable> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyTable> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Table mytable() {
    return Table(
      border: TableBorder.all(color: Colors.black, width: 1),
      columnWidths: {
        0: FixedColumnWidth(120),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
      },
      children: [
        TableRow(
          decoration: BoxDecoration(color: Colors.grey[300]),
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Nama", style: TextStyle(fontWeight: FontWeight.bold)),
            ), // Padding
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Umur", style: TextStyle(fontWeight: FontWeight.bold)),
            ), // Padding
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Kota", style: TextStyle(fontWeight: FontWeight.bold)),
            ), // Padding
          ],
        ), // TableRow
        TableRow(
          children: [
            Padding(padding: EdgeInsets.all(8.0), child: Text("Budi")),
            Padding(padding: EdgeInsets.all(8.0), child: Text("20")),
            Padding(padding: EdgeInsets.all(8.0), child: Text("Jakarta")),
          ],
        ), // TableRow
        TableRow(
          children: [
            Padding(padding: EdgeInsets.all(8.0), child: Text("Siti")),
            Padding(padding: EdgeInsets.all(8.0), child: Text("22")),
            Padding(padding: EdgeInsets.all(8.0), child: Text("Bandung")),
          ],
        ), // TableRow
        TableRow(
          children: [
            Padding(padding: EdgeInsets.all(8.0), child: Text("Andi")),
            Padding(padding: EdgeInsets.all(8.0), child: Text("25")),
            Padding(padding: EdgeInsets.all(8.0), child: Text("Surabaya")),
          ],
        ), // TableRow
      ],
    ); // Table
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ), // AppBar
      body: Center(
        child: mytable(),
      ), // Center
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods. // FloatingActionButton
    ); // Scaffold
  }
}