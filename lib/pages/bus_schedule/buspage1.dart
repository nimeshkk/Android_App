import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 248),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 100, 160),
        shadowColor: const Color.fromARGB(255, 4, 100, 160),
        title: const Text(
          "NSBM Shuttle Bus Scheudle",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
