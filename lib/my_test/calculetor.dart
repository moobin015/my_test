import 'package:flutter/material.dart';

class Calculetor extends StatefulWidget {
  const Calculetor({super.key});

  @override
  State<Calculetor> createState() => _CalculetorState();
}

class _CalculetorState extends State<Calculetor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Calculetor'),
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
      body: Container(
        // color: Colors.green,
        child: Column(
          children: [
            Container(
              height: 296,
              width: double.infinity,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      /// O N E
                      _bilder_one(),
                      SizedBox(width: 10),

                      /// T O W
                      _bilder_tow(),
                      SizedBox(width: 10),
                      // T H R E E
                      _bilder_three(),
                      SizedBox(width: 10),

                      /// P O S E T I V E
                      _bilder_add(),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      _bilder_fore(),
                      SizedBox(width: 10),
                      _bilder_five(),
                      SizedBox(width: 10),
                      _bilder_six(),
                      SizedBox(width: 10),
                      _bilder_remove(),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      _bilder_seven(),
                      SizedBox(width: 10),
                      _bilder_eight(),
                      SizedBox(width: 10),
                      _bilder_nine(),
                      SizedBox(width: 10),
                      _bilder_zero()
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [_bilder_ezual()],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector _bilder_one() {
    return GestureDetector(
      child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(45)),
          child: Center(
              child: Text('1',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white)))),
    );
  }

  Container _bilder_tow() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('2',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  Container _bilder_three() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('3',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  Container _bilder_fore() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('4',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  Container _bilder_five() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('5',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  Container _bilder_six() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('6',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  Container _bilder_seven() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('7',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  Container _bilder_eight() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('8',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  Container _bilder_nine() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('9',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  Container _bilder_zero() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('0',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  ///posetive
  Container _bilder_add() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('+',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  ///negetive
  Container _bilder_remove() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('-',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  ///into
  Container _bilder_into() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('*',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  /// divider
  Container _bilder_divider() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(45)),
        child: Center(
            child: Text('1',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }

  Container _bilder_ezual() {
    return Container(
        height: 80,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: Text('=',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white))));
  }
}
