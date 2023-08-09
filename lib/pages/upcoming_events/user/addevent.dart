import 'package:campus_connect_app/pages/upcoming_events/user/delete_event.dart';
import 'package:campus_connect_app/pages/upcoming_events/user/updateevent.dart';
import 'package:flutter/material.dart';

class AddEventScreen extends StatefulWidget {
  final Function(DateTime, String, DateTime, String, String, String)
      addEventCallback; // Added another parameter for images
  final DateTime selectedDate;

  AddEventScreen({
    required this.addEventCallback,
    required this.selectedDate,
  });

  @override
  _AddEventScreenState createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  late String name; // Changed 'topic' to 'name'
  late DateTime date; // Changed 'place' to 'date'
  late String description;
  late String organization;
  late String location;

  @override
  void initState() {
    super.initState();
    name = ''; // Initialize with an empty string
    date = widget.selectedDate; // Initialize with the selected date
    description = '';
    organization = '';
    location = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Event'),
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
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/back.jpg'), // Replace with your image asset
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Selected Date: ${widget.selectedDate.toString()}'),
                      SizedBox(height: 20),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Event Name',
                          hintText: 'Enter event name',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            description = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Description',
                          hintText: 'Enter event description',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            organization = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Organization',
                          hintText: 'Enter event organization',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            location = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'location',
                          hintText: 'Enter event location',
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          widget.addEventCallback(
                            widget.selectedDate,
                            name,
                            date,
                            description,
                            organization,
                            location,
                          );
                          Navigator.pop(context);
                        },
                        child: Text('Add Event'),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DeleteEventScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 216, 43,
                                    30), // Set the background color to red
                              ),
                              child: Text('Delete Event',
                                  style: TextStyle(
                                    color: Colors
                                        .black, // Set the font color to black
                                    fontWeight: FontWeight
                                        .bold, // Set the font weight to bold
                                  ))),

                          Spacer(), // This will push the Update Event button to the right
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UpdateEventScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(168, 146, 239,
                                  96), // Set the background color to red
                            ),
                            child: Text('Update Event',
                                style: TextStyle(
                                  color: Colors
                                      .black, // Set the font color to black
                                  fontWeight: FontWeight
                                      .bold, // Set the font weight to bold
                                )),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
          ),
        ));
  }
}

/*
class AddEventScreen extends StatefulWidget {
  final Function(EventData eventData) addEventCallback;
  final DateTime selectedDate;

  AddEventScreen({
    required this.addEventCallback,
    required this.selectedDate,
  });

  @override
  _AddEventScreenState createState() => _AddEventScreenState();
}

class EventData {
  final DateTime date;
  final String eventName;
  final String topic;
  final String place;

  EventData({
    required this.date,
    required this.eventName,
    required this.topic,
    required this.place,
  });
}

class _AddEventScreenState extends State<AddEventScreen> {
  TextEditingController _eventController = TextEditingController();
  TextEditingController _topicController = TextEditingController();
  TextEditingController _placeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Event'),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _eventController,
              decoration: InputDecoration(labelText: 'Event Name'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _topicController,
              decoration: InputDecoration(labelText: 'Topic'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _placeController,
              decoration: InputDecoration(labelText: 'Place'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_eventController.text.isNotEmpty &&
                    _topicController.text.isNotEmpty &&
                    _placeController.text.isNotEmpty) {
                  widget.addEventCallback(
                    EventData(
                      date: widget.selectedDate,
                      eventName: _eventController.text,
                      topic: _topicController.text,
                      place: _placeController.text,
                    ),
                  );
                  Navigator.pop(context);
                }
              },
               addEventCallback(selectedDate, 'New Event');
              child: Text('Add Event'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _eventController.dispose();
    _topicController.dispose();
    _placeController.dispose();
    super.dispose();
  }
*/
