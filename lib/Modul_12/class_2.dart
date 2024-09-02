import 'package:flutter/material.dart';

class Class2 extends StatefulWidget {
  const Class2({super.key});

  @override
  State<Class2> createState() => _Class2State();
}

class _Class2State extends State<Class2> {
  ///first nuber
  final TextEditingController _first = TextEditingController();

  ///2nd number
  final TextEditingController _secend = TextEditingController();

  ///result
  double _result = 0;

  ///
  final GlobalKey<FormState> _kye = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _kye,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///1st

              TextFormField(
                ///valid date
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Inter yoru Inpur';
                  }
                  return null;
                },

                //
                controller: _first,
                keyboardType: TextInputType.number,
                maxLength: 5,
                decoration: const InputDecoration(
                  label: Text('Input Number'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),

              ///2nd
              TextFormField(
                ///valid start
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Input Enter';
                  }
                  return null;
                },

                ///valid end
                controller: _secend,
                keyboardType: TextInputType.number,
                maxLength: 5,
                decoration: const InputDecoration(
                  label: Text('Input Number'),
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      onPressed: _result_add, child: const Icon(Icons.add)),
                  const SizedBox(width: 10),
                  OutlinedButton(
                      onPressed: _result_remove,
                      child: const Icon(Icons.remove)),
                  const SizedBox(width: 10),
                  OutlinedButton(
                      onPressed: _result_intu,
                      child: const Icon(Icons.dangerous_outlined)),
                  const SizedBox(width: 10),
                  OutlinedButton(
                      onPressed: _result_divider,
                      child: const Icon(Icons.safety_divider)),
                  const SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Result : ${_result.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 24, color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }

  ///add bilder
  // ignore: non_constant_identifier_names
  void _result_add() {
    if (_kye.currentState!.validate()) {
      double _one = double.tryParse(_first.text) ?? 0;
      double _tow = double.tryParse(_secend.text) ?? 0;
      _result = _one + _tow;
      setState(() {});
    }
  }

  void _result_remove() {
    if (_kye.currentState!.validate()) {
      double _one = double.tryParse(_first.text) ?? 0;
      double _tow = double.tryParse(_secend.text) ?? 0;
      _result = _one - _tow;
      setState(() {});
    }
  }

  void _result_intu() {
    if (_kye.currentState!.validate()) {
      double _one = double.tryParse(_first.text) ?? 0;
      double _tow = double.tryParse(_secend.text) ?? 0;
      _result = _one * _tow;
      setState(() {});
    }
  }

  void _result_divider() {
    if (_kye.currentState!.validate()) {
      double _one = double.tryParse(_first.text) ?? 0;
      double _tow = double.tryParse(_secend.text) ?? 0;
      _result = _one / _tow;
      setState(() {});
    }
  }

  bool _velid() {
    if (_first.text.isEmpty) {
      return false;
    } else if (_secend.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}
