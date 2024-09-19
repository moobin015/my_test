import 'package:flutter/material.dart';
import 'package:my_test/Module_13/class_1.dart';
import 'package:my_test/Module_13/test/test1.dart';

void main() {
  runApp(const My_test());
}

// ignore: camel_case_types
class  My_test extends StatelessWidget {
  const My_test({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      NewTest(),
      // WatterTraker(),

      ///Class2(), modul_12
      // Calculetor(),
      //Class1(),

      /**
       * ThreeScrine(),
       *

          voter and non voter chack
          SecendScrine()///
          floating action button kivave kaj kore
          First_Scrine(),
       */
    );
  }
}
