import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

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
  List<String> _onThisDayEvents = ['Event 1', 'Event 2'];
  Map<DateTime, List<String>> _upcomingEvents = {
    DateTime.now().add(Duration(days: 1)): ['Event 3'],
    DateTime.now().add(Duration(days: 2)): ['Event 4'],
    DateTime.now().add(Duration(days: 3)): ['Event 5'],
  };
  List<String> _selectedEvents = [];

  void _addEvent(DateTime date, String event) {
    setState(() {
      if (_upcomingEvents.containsKey(date)) {
        _upcomingEvents[date]!.add(event);
      } else {
        _upcomingEvents[date] = [event];
      }

      if (isSameDay(date, DateTime.now())) {
        _onThisDayEvents.add(event);
      }
    });
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
                  title: Text(_selectedEvents[index]),
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

  void _showAddEventScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => AddEventScreen(
          addEventCallback: _addEvent,
          selectedDate: _selectedDay,
        ),
      ),
    );
  }
}

class AddEventScreen extends StatelessWidget {
  final Function(DateTime, String) addEventCallback;
  final DateTime selectedDate;

  AddEventScreen({required this.addEventCallback, required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Event'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selected Date: ${selectedDate.toString()}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                addEventCallback(selectedDate, 'New Event');
                Navigator.pop(context);
              },
              child: Text('Add Event'),
            ),
          ],
        ),
      ),
    );
  }
}
