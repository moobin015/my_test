import 'package:flutter/material.dart';

class First_Scrine extends StatefulWidget {
  const First_Scrine({super.key});

  @override
  State<First_Scrine> createState() => _First_ScrineState();
}

class _First_ScrineState extends State<First_Scrine> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.black45,
        titleTextStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
      ),
      body: Center(
        child: Text('Counter text : $_counter '),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _add,
        child: Icon(Icons.add),
      ),
    );
  }

  void _add() {
    _counter++;
    setState(() {});
  }
}
