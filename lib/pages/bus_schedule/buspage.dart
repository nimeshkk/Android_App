import 'package:campus_connect_app/pages/home2.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import 'buspage1.dart';
import 'buspage2.dart';
import 'buspage3.dart';

class Buspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //debugShowCheckedModeBanner: false,
    // title: "bus shudelling",
    // home:
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 243, 246),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 100, 160),
        shadowColor: const Color.fromARGB(255, 14, 8, 172),
        title: const Text(
          "Bus Schedule",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: SingleChildScrollView(
        // wrap with using this the aplication can scroll down
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // get the text in rigth hand side
            children: [],
          ),
        ),
      ),
    );
  }
}
