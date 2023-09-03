import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:campus_connect_app/pages/lostfound_items/lost_item_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// Import the lostitem_input.dart file

class LostItemInputScreen extends StatefulWidget {
  @override
  _LostItemInputScreenState createState() => _LostItemInputScreenState();
}

class _LostItemInputScreenState extends State<LostItemInputScreen> {
  TextEditingController itemNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();

  // Function to handle saving the lost item to the database
  void saveLostItem(BuildContext context) async {
    final model = Provider.of<LostItemModel>(context, listen: false);
    final itemName = itemNameController.text;
    final description = descriptionController.text;
    final contactNumber = contactNumberController.text;

    final newItem = LostItem(
      itemName: itemName,
      description: description,
      contactNumber: contactNumber,
    );

    // Add the new lost item to Firestore
    await FirebaseFirestore.instance.collection('lost_items').add({
      'itemName': newItem.itemName,
      'description': newItem.description,
      'contactNumber': newItem.contactNumber,
    });

    model.addLostItem(newItem);
    // Display a SnackBar to indicate successful save
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor:
            const Color.fromARGB(223, 5, 119, 106), // Set the background color
        content: Text(
          'Lost item saved successfully',
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
        'assets/lost3.png', // Replace with your image asset path
        fit: BoxFit.cover, // You can adjust the fit property as needed
        width: double.infinity,
        height: double.infinity,
      ),

      Scaffold(
        appBar: AppBar(
          title: Text(
            "Add Your Lost Item",
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
                'Add your lost item details clearly and if you find that delete your notice in the display item screen', //  description text
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 76, 55),
                ),
                textAlign: TextAlign.center,
              ),
              TextField(
                controller: itemNameController,
                decoration: InputDecoration(labelText: 'Lost Item Name'),
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
                  saveLostItem(context);
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
                'assets/lost5.png', // Replace with your image asset path
                width: 350, // Set the width as per your requirement
                height: 330, // Set the height as per your requirement
                fit: BoxFit.cover, // You can adjust the fit property as needed
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
