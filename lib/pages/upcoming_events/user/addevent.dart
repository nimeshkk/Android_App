import 'dart:html';

import 'package:campus_connect_app/pages/upcoming_events/user/updateevent.dart';
import 'package:flutter/material.dart';
import 'delete_event.dart'; // Import the DeleteEventScreen class

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

//add event screen update done
class AddEventScreen extends StatefulWidget {
  final Function(DateTime, String, DateTime, String, String, String)
      addEventCallback;
  final Function(Event) deleteEventCallback;
  final Function(Event) updateEventCallback; // Add the update callback

  final DateTime selectedDate;
  final List<Event> events;

  AddEventScreen({
    required this.addEventCallback,
    required this.deleteEventCallback,
    required this.updateEventCallback, // Pass the updateEvent callback
    required this.selectedDate,
    required this.events,
    required List<Event> events01,
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

  void _deleteEvent(Event event) {
    setState(() {
      widget.events.removeWhere((e) =>
          e.eventName == event.eventName && e.location == event.location);
    });

    widget.deleteEventCallback(
        event); // Notify CalendarScreen about event deletion
  }

  void _navigateToUpdateEventScreen(Event event) async {
    final updatedEvent = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UpdateEventScreen(
          event: event,
          updateEventCallback: _updateEventCallback,
        ),
      ),
    );

    if (updatedEvent != null) {
      _updateEventCallback(updatedEvent);
    }
  }

  void _updateEventCallback(Event updatedEvent) {
    setState(() {
      int index = widget.events
          .indexWhere((event) => event.eventName == updatedEvent.eventName);

      if (index != -1) {
        widget.events[index] = updatedEvent;
      }
    });

    widget.updateEventCallback(
        updatedEvent); // Notify CalendarScreen about event update
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Add Event',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Color.fromARGB(255, 2, 76, 55),
          ),
        ),
        flexibleSpace: Container(),

//         title: Text('Add Event'),
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [Color(0xFF509CF4), Color(0xFF3256C7)],
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //     ),
        //   ),
        // ),

      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
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
                        labelText: 'Location',
                        hintText: 'Enter event location',
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _addEvent,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 2, 76, 55),
                      ),
                      child: Text(
                        'Add Event',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (widget.events.isNotEmpty) {
                              _showDeleteDialog(); // Show dialog to select event for deletion
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 216, 43, 30),
                          ),
                          child: Text(
                            'Delete Event',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (widget.events.isNotEmpty) {
                              _showUpdateDialog(); // Show dialog to select event for update
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 2, 76, 55),
                          ),
                          child: Text(
                            'Update Event',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    _buildEventsList(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _addEvent() {
    if (name.isNotEmpty &&
        description.isNotEmpty &&
        organization.isNotEmpty &&
        location.isNotEmpty) {
      Event newEvent = Event(
        eventName: name,
        date: date,
        description: description,
        organization: organization,
        location: location,
      );
      setState(() {
        widget.events.add(newEvent);
      });
      _showEventDetails(newEvent);
      widget.addEventCallback(
        date,
        name,
        date,
        description,
        organization,
        location,
      );
    } else {
      // Show an error message if any field is empty
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('All fields are required.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  void _showEventDetails(Event event) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Added Event Details'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Event Name: ${event.eventName}'),
              Text('Date: ${event.date.toString()}'),
              Text('Description: ${event.description}'),
              Text('Organization: ${event.organization}'),
              Text('Location: ${event.location}'),
            ],
          ),
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
  }

  void _showUpdateDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Update Event',
          ),
          content: Text('Select the event to update:'),
          actions: [
            for (Event event in widget.events)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the dialog
                    _navigateToUpdateEventScreen(
                        event); // Navigate to update screen
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        255, 2, 76, 55), // Button background color
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.eventName,
                        style: TextStyle(color: Colors.black), // Text color
                      ),
                      Text(
                        event.location,
                        style: TextStyle(color: Colors.black), // Text color
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  void _showDeleteDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Delete Event'),
          content: Text('Select the event to delete:'),
          actions: [
            for (Event event in widget.events)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the dialog
                    _deleteEvent(event); // Call delete function
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red, // Button background color
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.eventName,
                        style: TextStyle(color: Colors.black), // Text color
                      ),
                      Text(
                        event.location,
                        style: TextStyle(color: Colors.black), // Text color
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildEventsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'All Events:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        for (int i = 0; i < widget.events.length; i++)
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Event Name: ${widget.events[i].eventName}'),
                Text('Date: ${widget.events[i].date.toString()}'),
                Text('Description: ${widget.events[i].description}'),
                Text('Organization: ${widget.events[i].organization}'),
                Text('Location: ${widget.events[i].location}'),
                Divider(),
              ],
            ),
          ),
      ],
    );
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
