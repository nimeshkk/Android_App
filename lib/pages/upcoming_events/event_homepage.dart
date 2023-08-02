import 'package:campus_connect_app/pages/upcoming_events/user/addevent.dart';
import 'package:campus_connect_app/pages/upcoming_events/user/eventdetails.dart';
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
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  bool isAdmin = true; // Set this to false if the user is not an admin

  void _navigateToPage() {
    if (isAdmin) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => addevent()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => eventdetails()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(180, 80, 156, 244),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            _navigateToPage(); // Navigate based on the role
          },
        ),
        title: Text('Events'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/homeevent.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Two-Thirds Section',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'One-Third Section',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Go Away',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(
                        height:
                            20), // Add some space between the labels and buttons
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => eventdetails()),
                        );
                      },
                      child: Text('User Page'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => addevent()),
                        );
                      },
                      child: Text('Admin Page'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
