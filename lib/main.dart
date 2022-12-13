// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:demo_app/name_generator_screen.dart';
import 'package:demo_app/line_chart.dart';
import 'package:demo_app/price_point.dart';
import 'package:english_words/english_words.dart';
import 'package:demo_app/mixed_chart_screen.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import 'line_chart_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Testing stuff',
    theme: ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text ("First Screen"),),
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
              child:Text('Name Generator'),
              onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> NameGeneratorScreen()));
                 },
            ),
           TextButton(
            child:Text('Line Chart Fl_Chart'),
            onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> LineChartScreen()));
              },
           ),
           TextButton(
            child:Text('Mixed Chart Flutter Chart'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> OrdinalComboBarLineChart()));
            },
           )
          ]
      ),
      )
    );
  }
}




