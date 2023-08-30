import 'package:flutter/material.dart';

class LostItemInputScreen extends StatefulWidget {
  @override
  _LostItemInputScreenState createState() => _LostItemInputScreenState();
}

class _LostItemInputScreenState extends State<LostItemInputScreen> {
  TextEditingController itemNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController contactNumberController = TextEditingController();

  // Function to handle saving the lost item to the database
  void saveLostItem() {
    // Implement database save logic here
    // You would typically use a database package (e.g., Firebase Firestore)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Lost Item'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
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
            ElevatedButton(
              onPressed: () {
                saveLostItem();
                // Navigate to the display screen after saving
                Navigator.pushNamed(context, '/display');
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
