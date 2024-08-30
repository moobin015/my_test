import 'package:flutter/material.dart';

class ThreeScrine extends StatefulWidget {
  const ThreeScrine({super.key});

  @override
  State<ThreeScrine> createState() => _ThreeScrineState();
}

class _ThreeScrineState extends State<ThreeScrine> {
  ///C o n t o l o r
  TextEditingController _first = TextEditingController();
  TextEditingController _secend = TextEditingController();

  /// V A L U
  double _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(22),
        child: Column(
          children: [
            ///one
            TextField(
              /// C O N T O L E R
              controller: _first,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Input ',
                label: Text('Input'),
                fillColor: Colors.blue,
                prefixIcon: Icon(Icons.numbers),
              ),
              maxLength: 3,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 18),

            ///SECEND
            TextField(
              // C O N T O L E R
              controller: _secend,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Input ',
                label: Text('Input'),
                fillColor: Colors.blue,
                prefixIcon: Icon(Icons.numbers),
              ),
              maxLength: 3,
              keyboardType: TextInputType.number,
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(onPressed: _add, child: Text('+')),
                SizedBox(width: 20),
                OutlinedButton(onPressed: _remove, child: Text('-')),
                SizedBox(width: 20),
                OutlinedButton(onPressed: _gon, child: Text('*')),
                SizedBox(width: 20),
                OutlinedButton(onPressed: _divider, child: Text('/')),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Result: ${_count.toStringAsFixed(0)}',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void _add() {
    double one = double.tryParse(_first.text) ?? 0;
    double tow = double.tryParse(_secend.text) ?? 0;
    _count = one + tow;
    setState(() {});
  }

  void _remove() {
    double one = double.tryParse(_first.text) ?? 0;
    double tow = double.tryParse(_secend.text) ?? 0;
    _count = one - tow;
    setState(() {});
  }

  void _gon() {
    double one = double.tryParse(_first.text) ?? 0;
    double tow = double.tryParse(_secend.text) ?? 0;
    _count = one * tow;
    setState(() {});
  }

  void _divider() {
    double one = double.tryParse(_first.text) ?? 0;
    double tow = double.tryParse(_secend.text) ?? 0;
    _count = one / tow;
    setState(() {});
  }
}
