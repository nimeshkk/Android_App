import 'package:campus_connect_app/pages/home2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Event(),
    );
  }
}

class Event extends StatefulWidget {
  @override
  _BusState createState() => _BusState();
}

class _BusState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Color.fromARGB(218, 75, 145, 225), // Set the background color here
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => Home2()));
          },
        ),
        title: Text('Event Page'), // You can set the title here
        // You can add more actions if needed using the `actions` property
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
