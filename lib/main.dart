import 'package:flutter/material.dart';
import 'package:my_test/Modul_12/class_1.dart';
import 'package:my_test/Modul_12/class_2.dart';
import 'package:my_test/Scrine/Secend_Scrine.dart';
import 'package:my_test/my_test/calculetor.dart';

import 'Scrine/First_Scrine.dart';
import 'Scrine/Three_Scrine.dart';

void main() {
  runApp(const My_test());
}

// ignore: camel_case_types
class  My_test extends StatelessWidget {
  const My_test({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Class2(),
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
