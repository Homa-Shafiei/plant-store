import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'cartScreen.dart';
import 'itemScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.green,
        backgroundColor: Color(0xFFFCFCFC),
        canvasColor: Colors.white,
      ),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        ItemScreen.routeName: (ctx) => ItemScreen(),
        CartScreen.routeName: (ctx) => CartScreen(),
      },
    );
  }
}