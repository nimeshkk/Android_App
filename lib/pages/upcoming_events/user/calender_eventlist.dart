import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'addevent.dart'; // Import the AddEventScreen class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Calendar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalendarScreen(),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  List<Map<String, dynamic>> _onThisDayEvents =
      []; // Update event list to hold maps
  Map<DateTime, List<Map<String, dynamic>>> _upcomingEvents = {
    DateTime.now().add(Duration(days: 1)): [],
    DateTime.now().add(Duration(days: 2)): [],
    DateTime.now().add(Duration(days: 3)): [],
  };
  List<Map<String, dynamic>> _selectedEvents = [];

  void _addEvent(DateTime date, String name, DateTime eventDate,
      String description, String organization, String images) {
    setState(() {
      if (_upcomingEvents.containsKey(date)) {
        _upcomingEvents[date]!.add({
          'name': name,
          'description': description,
          'organization': organization,
          'images': images,
        });
      } else {
        _upcomingEvents[date] = [
          {
            'name': name,
            'description': description,
            'organization': organization,
            'images': images,
          }
        ];
      }

      if (isSameDay(date, DateTime.now())) {
        _onThisDayEvents.add({
          'name': name,
          'description': description,
          'organization': organization,
          'images': images,
        });
      }
    });
  }

  void _updateSelectedEvents() {
    if (isSameDay(_selectedDay, DateTime.now())) {
      _selectedEvents = _onThisDayEvents;
    } else {
      _selectedEvents = [];
      _onThisDayEvents = _upcomingEvents[_selectedDay] ?? [];
      _upcomingEvents.forEach((date, events) {
        if (date.isAfter(_selectedDay)) {
          _selectedEvents.addAll(events);
        }
      });
    }
  }

  void _showAddEventScreen() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => AddEventScreen(
          addEventCallback: _addEvent,
          selectedDate: _selectedDay,
        ),
      ),
    );

    if (result != null) {
      // Handle result from AddEventScreen if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Calendar'),
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
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 234, 235, 241),
            child: TableCalendar(
              firstDay: DateTime(2000),
              lastDay: DateTime(2050),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                  _updateSelectedEvents();
                });
              },
              onPageChanged: (focusedDay) {
                setState(() {
                  _focusedDay = focusedDay;
                  _updateSelectedEvents();
                });
              },
              calendarStyle: CalendarStyle(
                defaultTextStyle: TextStyle(color: Colors.black),
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              onDayLongPressed: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                  _updateSelectedEvents();
                });
              },
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 179, 189, 243),
                ),
                onPressed: () {
                  setState(() {
                    _selectedEvents = _onThisDayEvents;
                  });
                },
                child: Text(
                  'On This Day',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 179, 189, 243),
                ),
                onPressed: () {
                  setState(() {
                    _selectedEvents = [];
                    _upcomingEvents.forEach((date, events) {
                      if (date.isAfter(_selectedDay)) {
                        _selectedEvents.addAll(events);
                      }
                    });
                  });
                },
                child: Text(
                  'Upcoming',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: _selectedEvents.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_selectedEvents[index]['name']),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_selectedEvents[index]['description']),
                      Text(_selectedEvents[index]['organization']),
                    ],
                    // You can display more details here as needed
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddEventScreen();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
