import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddEventScreen(
        addEventCallback: (date, name, description, organization, location) {
          // Implement the logic to add the event here
        },
        selectedDate: DateTime.now(),
        events: events01, // Pass the events list here
      ),
    );
  }
}

class Event {
  final String eventName;
  final DateTime date;
  final String description;
  final String organization;
  final String location;

  Event({
    required this.eventName,
    required this.date,
    required this.description,
    required this.organization,
    required this.location,
  });
}

class AddEventScreen extends StatefulWidget {
  final Function(
    DateTime,
    String,
    String,
    String,
    String,
  ) addEventCallback;
  final DateTime selectedDate;
  final List<Event01> events;

  AddEventScreen({
    required this.addEventCallback,
    required this.selectedDate,
    required this.events,
  });

  @override
  _AddEventScreenState createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  late String name;
  late DateTime date;
  late String description;
  late String organization;
  late String location;

  @override
  void initState() {
    super.initState();
    name = '';
    date = widget.selectedDate;
    description = '';
    organization = '';
    location = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ... rest of the scaffold setup
        );
  }

  void _deleteEvent(
    String eventName,
    DateTime selectedDate,
    String description,
    String organization,
    String location,
  ) {
    setState(() {
      widget.events.removeWhere(
        (event) =>
            event.eventName == eventName &&
            event.date == selectedDate &&
            event.description == description &&
            event.organization == organization &&
            event.location == location,
      );
    });
  }

  // ... rest of the class remains unchanged
}

class Event01 {
  final String eventName;
  final DateTime date;
  final String description;
  final String organization;
  final String location;

  Event01({
    required this.eventName,
    required this.date,
    required this.description,
    required this.organization,
    required this.location,
  });
}

List<Event01> events01 = []; // Make sure you have events added to this list

class Event2 {
  final String eventName;
  final DateTime date;
  final String description;
  final String organization;
  final String location;

  Event2({
    required this.eventName,
    required this.date,
    required this.description,
    required this.organization,
    required this.location,
  });
}


  /*void _showEventDetails(event) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('delete Event Details'),
       
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }*/



    








































/*import 'package:flutter/material.dart';

class DeleteEventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Event'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF509CF4), Color(0xFF3256C7)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/back.jpg'), // Set your background image asset
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Are you sure you want to delete this event?',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Go back to the previous screen
                },
                style: TextButton.styleFrom(
                  backgroundColor:
                      Colors.blue, // Set the background color to blue
                ),
                child: Text('Cancel', style: TextStyle(color: Colors.black)),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  // Perform delete action here
                  Navigator.pop(context); // Go back to the previous screen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(
                      255, 222, 75, 6), // Set the button background color
                ),
                child: Text('Delete', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ])),
      ),
    );
  }*/

