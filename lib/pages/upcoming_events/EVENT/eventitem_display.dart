import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:table_calendar/table_calendar.dart'; // Import the table_calendar package
import 'event_item_model.dart';
import 'eventitem_input.dart';

class eventItemDisplayScreen extends StatefulWidget {
  @override
  _eventItemDisplayScreenState createState() => _eventItemDisplayScreenState();
}

class _eventItemDisplayScreenState extends State<eventItemDisplayScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // Method to delete an event item
  void deleteEventItem(BuildContext context, String documentId) {
    FirebaseFirestore.instance
        .collection('event_items')
        .doc(documentId)
        .delete()
        .then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Color.fromARGB(223, 5, 119, 106),
          content: Text(
            'Item deleted successfully',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );
    }).catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to delete item: $error'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<eventItemModel>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Events",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              color: Color.fromARGB(255, 2, 76, 55),
            ),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/eventnew.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('event_items')
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }

              if (snapshot.hasData) {
                final List<eventItem> eventItems = [];
                for (final DocumentSnapshot doc in snapshot.data!.docs) {
                  final data = doc.data() as Map<String, dynamic>;
                  eventItems.add(eventItem(
                    eventName: data['itemName'],
                    description: data['description'],
                    location: data['location'],
                    date: data['date'],
                    organization: data['organization'],
                  ));
                }

                model.seteventItems(eventItems);

                return Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      Container(
                        color: Color.fromARGB(255, 160, 244, 227),
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
                      Expanded(
                        child: ListView.builder(
                          itemCount: eventItems.length,
                          itemBuilder: (ctx, index) {
                            final item = eventItems[index];
                            return Container(
                              margin: EdgeInsets.all(10.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(223, 231, 251, 248),
                                border: Border.all(
                                  color: Color.fromARGB(223, 5, 119, 106),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: ListTile(
                                title: Text(
                                  item.eventName,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.description,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      item.location,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      item.date,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      item.organization,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                trailing: IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                    color: Color.fromARGB(223, 5, 119, 106),
                                  ),
                                  onPressed: () {
                                    deleteEventItem(
                                        context, snapshot.data!.docs[index].id);
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => eventItemInputScreen(),
            ),
          );
        },
        backgroundColor: Color.fromARGB(223, 2, 151, 151),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  void _updateSelectedEvents() {
    // Implement logic to filter and display events for the selected day.
  }
}
