import 'package:flutter/material.dart';

class SecendScrine extends StatefulWidget {
  const SecendScrine({super.key});

  @override
  State<SecendScrine> createState() => _SecendScrineState();
}

class _SecendScrineState extends State<SecendScrine> {
  TextEditingController _textEditingController = TextEditingController();
  String _age = '';
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Appbar'), backgroundColor: Colors.blue),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
              keyboardType: TextInputType.number,
              maxLength: 2,
              decoration: InputDecoration(
                hintText: 'input age',
                label: Text('Input Age'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text('বয়স ${_textEditingController.text} = ${_age}', style: TextStyle(fontSize: 22)),
            SizedBox(height: 10),
            OutlinedButton(
                onPressed: _bilderagechack, child: Text('Age Chaker'))
          ],
        ),
      ),
    );
  }

  void _bilderagechack() {
    double one = double.parse(_textEditingController.text);
    if (one == 18 || one > 18) {
      _age = 'ভোটার';
    } else {
      _age = 'ভোটার না';
    }
    setState(() {});
  }
}
