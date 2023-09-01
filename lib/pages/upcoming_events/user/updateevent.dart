import 'package:campus_connect_app/pages/upcoming_events/user/addevent.dart';
import 'package:flutter/material.dart';

class UpdateEventScreen extends StatefulWidget {
  final Event event;
  final Function(Event) updateEventCallback;

  UpdateEventScreen({
    required this.event,
    required this.updateEventCallback,
  });

  @override
  _UpdateEventScreenState createState() => _UpdateEventScreenState();
}

class _UpdateEventScreenState extends State<UpdateEventScreen> {
  late String updatedName;
  late String updatedDescription;
  late String updatedOrganization;
  late String updatedLocation;

  void _updateEvent() {
    Event updatedEvent = Event(
      eventName: updatedName,
      date: widget.event.date,
      description: updatedDescription,
      organization: updatedOrganization,
      location: updatedLocation,
    );
    Navigator.pop(context);
    widget.updateEventCallback(
        updatedEvent); // Call the callback to update the event
    // Return to the previous screen
  }

  @override
  void initState() {
    super.initState();
    updatedName = widget.event.eventName;
    updatedDescription = widget.event.description;
    updatedOrganization = widget.event.organization;
    updatedLocation = widget.event.location;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Update Event',
        ),
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
        height: MediaQuery.of(context).size.height * 0.9,
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    initialValue: updatedName,
                    onChanged: (value) {
                      setState(() {
                        updatedName = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Event Name'),
                  ),
                  TextFormField(
                    initialValue: updatedDescription,
                    onChanged: (value) {
                      setState(() {
                        updatedDescription = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Description'),
                  ),
                  TextFormField(
                    initialValue: updatedOrganization,
                    onChanged: (value) {
                      setState(() {
                        updatedOrganization = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Organization'),
                  ),
                  TextFormField(
                    initialValue: updatedLocation,
                    onChanged: (value) {
                      setState(() {
                        updatedLocation = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Location'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _updateEvent,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Set button color here
                    ),
                    child: Text(
                      'Update Event',
                      style: TextStyle(
                        color: Colors.black, // Set text color here
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
