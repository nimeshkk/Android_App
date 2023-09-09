import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'event_item_model.dart';
// Import the lostitem_input.dart file

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

  // Function to handle saving the lost item to the database
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

    // Add the new lost item to Firestore
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
        backgroundColor:
            const Color.fromARGB(223, 5, 119, 106), // Set the background color
        content: Text(
          'event item saved successfully',
          style: TextStyle(
            color: Colors.white, // Set the text color
          ),
        ),
      ),
    );

    // Navigate to the display screen after saving
    Navigator.pushNamed(context, '/display');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Background Image
      Image.asset(
        'assets/eventnew.png', // Replace with your image asset path
        fit: BoxFit.cover, // You can adjust the fit property as needed
        width: double.infinity,
        height: double.infinity,
      ),

      Scaffold(
        appBar: AppBar(
          title: Text(
            "Add Your event Item",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Color.fromARGB(255, 2, 76, 55)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 25.0),
              Text(
                'Add your  event item details clearly and if you find that delete your notice in the display item screen', //  description text
                style: TextStyle(
                  fontSize: 18.0,
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
                decoration: InputDecoration(labelText: 'location'),
                keyboardType: TextInputType.phone,
              ),

              TextField(
                controller: dateController,
                decoration: InputDecoration(labelText: 'date and time'),
                keyboardType: TextInputType.phone,
              ),
              TextField(
                controller: organizationController,
                decoration: InputDecoration(labelText: 'organization'),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 16.0),
              /* ElevatedButton(
               
                onPressed: () {
                  saveLostItem(context);
                },
                child: Text('Save'),
              ), */
              MaterialButton(
                color: const Color.fromARGB(223, 5, 119, 106),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                onPressed: () {
                  saveeventItem(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "save",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height:
                      8.0), // Add some space between the button and the image
              Image.asset(
                'assets/eventnew02.png', // Replace with your image asset path
                width: 350, // Set the width as per your requirement
                height: 250, // Set the height as per your requirement
                fit: BoxFit.cover, // You can adjust the fit property as needed
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
