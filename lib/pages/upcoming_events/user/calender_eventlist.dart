import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'addevent.dart';

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
  List<Map<String, dynamic>> _onThisDayEvents = [];
  Map<DateTime, List<Map<String, dynamic>>> _upcomingEvents = {
    DateTime.now().add(Duration(days: 1)): [],
    DateTime.now().add(Duration(days: 2)): [],
    DateTime.now().add(Duration(days: 3)): [],
  };
  List<Map<String, dynamic>> _selectedEvents = [];

  void _deleteEventFromSelectedDate(Event event) {
    setState(() {
      _upcomingEvents[_selectedDay]?.removeWhere((e) =>
          e['name'] == event.eventName && e['location'] == event.location);
      _onThisDayEvents.removeWhere((e) =>
          e['name'] == event.eventName && e['location'] == event.location);
      _updateSelectedEvents();
    });
  }

  void _addEvent(DateTime date, String name, DateTime eventDate,
      String description, String organization, String location) {
    setState(() {
      if (_upcomingEvents.containsKey(date)) {
        _upcomingEvents[date]!.add({
          'name': name,
          'date': eventDate,
          'description': description,
          'organization': organization,
          'location': location,
        });
      } else {
        _upcomingEvents[date] = [
          {
            'name': name,
            'date': eventDate,
            'description': description,
            'organization': organization,
            'location': location,
          }
        ];
      }

      if (isSameDay(date, DateTime.now())) {
        _onThisDayEvents.add({
          'name': name,
          'date': eventDate,
          'description': description,
          'organization': organization,
          'location': location,
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

          events: [],
          deleteEventCallback:
              _deleteEventFromSelectedDate, // Pass the callback
          selectedDate: _selectedDay,
          events01: _upcomingEvents[_selectedDay]?.map((eventData) {
                return Event(
                  eventName: eventData['name'],
                  date: eventData['date'],
                  description: eventData['description'],
                  organization: eventData['organization'],
                  location: eventData['location'],
                );
              }).toList() ??
              [], // Pass the events
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
        actions: [
          IconButton(
            icon: Icon(Icons.forward),
            onPressed: () {
              _showAddEventScreen();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 0, 15, 94),
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Important Notice: only admin can do modifications for events',
              style: TextStyle(
                color: Colors.red, // Customize the text color
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
                return Dismissible(
                  key: Key(
                      _selectedEvents[index]['name']), // Provide a unique key

                  background: Container(
                    alignment: Alignment.centerRight,
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.delete, color: Colors.white),
                    ),
                  ),

                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(107, 78, 182, 230),
                        border: Border.all(
                          color: Color.fromARGB(255, 15, 90, 7),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Text(_selectedEvents[index]['name']),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(_selectedEvents[index]['description']),
                            Text(_selectedEvents[index]['organization']),
                            Text(_selectedEvents[index]['location']),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddEventScreen,
        child: Icon(Icons.add),
      ),
    );
  }
}
