import 'package:flutter/material.dart';

class AddEventScreen extends StatefulWidget {
  final Function(DateTime date, String event) addEventCallback;
  final DateTime selectedDate; // New addition

  AddEventScreen({
    required this.addEventCallback,
    required this.selectedDate,
  });

  @override
  _AddEventScreenState createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  TextEditingController _eventController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Event'),
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
            ElevatedButton(
              onPressed: () {
                if (_eventController.text.isNotEmpty) {
                  widget.addEventCallback(
                    widget.selectedDate, // Use the selected date
                    _eventController.text,
                  );
                  Navigator.pop(context); // Return to the CalendarScreen.
                }
              },
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
    super.dispose();
  }
}
