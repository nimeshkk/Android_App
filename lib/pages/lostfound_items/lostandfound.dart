import 'package:flutter/material.dart';
//import 'lostitem_input.dart';
import 'lostitem_display.dart';

class lostandfound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lost and Found App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        //  '/': (ctx) => LostItemInputScreen(),
        '/display': (ctx) =>
            LostItemDisplayScreen(), // Pass your lost items data here
      },
    );
  }
}
