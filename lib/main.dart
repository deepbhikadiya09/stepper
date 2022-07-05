
import 'package:flutter/material.dart';

import 'FirstScr.dart';
import 'SecondScr.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
        '/':(context)=>FirstScr(),
        '/SecondScr':(context)=>SecondScr(),
     },
    ),
  );
}
