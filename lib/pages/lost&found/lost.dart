import 'package:flutter/material.dart';

class LostAndFound extends StatefulWidget {
  const LostAndFound({Key? key}) : super(key: key);

  @override
  State<LostAndFound> createState() => _LostAndFoundState();
}

class _LostAndFoundState extends State<LostAndFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lost & Found'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 219, 132),
      ),
      body: const Center(
        child: Text(
          'Lost & Found',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
