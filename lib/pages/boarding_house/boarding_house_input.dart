import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:campus_connect_app/pages/boarding_house/boarding_house_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BoardingHouseInputScreen extends StatefulWidget {
  @override
  _BoardingHouseInputScreenState createState() =>
      _BoardingHouseInputScreenState();
}

class _BoardingHouseInputScreenState extends State<BoardingHouseInputScreen> {
  TextEditingController locationController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();

  // Function to handle saving the boarding house to the database
  void saveBoardingHouse(BuildContext context) async {
    final model = Provider.of<BoardingHouseModel>(context, listen: false);
    final location = locationController.text;
    final description = descriptionController.text;
    final contactNumber = contactNumberController.text;

    final newHouse = BoardingHouse(
      location: location,
      description: description,
      contactNumber: contactNumber,
    );

    // Add the new boarding house to Firestore
    await FirebaseFirestore.instance.collection('boarding_houses').add({
      'location': newHouse.location,
      'description': newHouse.description,
      'contactNumber': newHouse.contactNumber,
    });

    model.addBoardingHouse(newHouse);
    // Display a SnackBar to indicate successful save
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: const Color.fromARGB(223, 5, 119, 106),
        content: Text(
          'Boarding house saved successfully',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

    // Navigate to the display screen after saving
    Navigator.pushNamed(context, '/display'); // Change to the appropriate route
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Background Image
      Image.asset(
        'assets/lost3.png',
        fit: BoxFit.cover, //  can adjust the fit property as needed
        width: double.infinity,
        height: double.infinity,
      ),

      Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    title: Text(
                      "Boarding Houses", // Change the title
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Color.fromARGB(255, 2, 76, 55),
                      ),
                    ),
                    // Set the icon color to black
                    iconTheme: IconThemeData(color: Colors.black),
                  ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 25.0),
              Text(
                'Add your boarding house details clearly',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 76, 55),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.0),
              TextField(
                controller: locationController,
                decoration: InputDecoration(labelText: 'Location'),
              ),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
              ),
              TextField(
                controller: contactNumberController,
                decoration: InputDecoration(labelText: 'Contact Number'),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 16.0),
              MaterialButton(
                color: const Color.fromARGB(223, 5, 119, 106),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                onPressed: () {
                  saveBoardingHouse(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Image.asset(
                'assets/bhouse2.png',
                width: 350,
                height: 330,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
