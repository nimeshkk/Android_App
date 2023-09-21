import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'event_item_model.dart';

class eventItemInputScreen extends StatefulWidget {
  @override
  _eventItemInputScreenState createState() => _eventItemInputScreenState();
}

class _eventItemInputScreenState extends State<eventItemInputScreen> {
  TextEditingController itemNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController organizationController = TextEditingController();

  // Function to handle saving the event item to the database
  void saveeventItem(BuildContext context) async {
    final model = Provider.of<eventItemModel>(context, listen: false);
    final itemName = itemNameController.text;
    final description = descriptionController.text;
    final location = locationController.text;
    final date = dateController.text;
    final organization = organizationController.text;

    final newItem = eventItem(
      eventName: itemName,
      description: description,
      location: location,
      date: date,
      organization: organization,
    );

    // Add the new event item to Firestore
    await FirebaseFirestore.instance.collection('event_items').add({
      'itemName': newItem.eventName,
      'description': newItem.description,
      'location': newItem.location,
      'date': newItem.date,
      'organization': newItem.organization
    });

    model.addeventItem(newItem);

    // Display a SnackBar to indicate successful save
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Color.fromARGB(223, 255, 255, 255),
        content: Text(
          'Event item saved successfully',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

    // Navigate to the display screen after saving
    Navigator.pushNamed(context, '/display');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Image.asset(
          'assets/eventnew.jpg',
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Add Your Event Item",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
                color: Color.fromARGB(255, 2, 76, 55),
              ),
            ),
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white, // Set the background color to white
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(height: 8.0),
                    Text(
                      'Add your event item details clearly and if you find that delete your notice in the display item screen',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 76, 55),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TextField(
                      controller: itemNameController,
                      decoration: InputDecoration(labelText: 'Event Name'),
                    ),
                    TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(labelText: 'Description'),
                    ),
                    TextField(
                      controller: locationController,
                      decoration: InputDecoration(labelText: 'Location'),
                      keyboardType: TextInputType.text,
                    ),
                    TextField(
                      controller: dateController,
                      decoration: InputDecoration(labelText: 'Date and Time'),
                      keyboardType: TextInputType.text,
                    ),
                    TextField(
                      controller: organizationController,
                      decoration: InputDecoration(labelText: 'Organization'),
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 4.0),
                    MaterialButton(
                      color: const Color.fromARGB(223, 5, 119, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        saveeventItem(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Save",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Image.asset(
                      'assets/eventnew02.jpg',
                      width: 350,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

