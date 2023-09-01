import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:campus_connect_app/pages/lostfound_items/lost_item_model.dart';
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
  void saveLostItem(BuildContext context) {
    final model = Provider.of<LostItemModel>(context, listen: false);
    final itemName = itemNameController.text;
    final description = descriptionController.text;
    final contactNumber = contactNumberController.text;

    final newItem = LostItem(
      itemName: itemName,
      description: description,
      contactNumber: contactNumber,
    );

    model.addLostItem(newItem);

    // Navigate to the display screen after saving
    Navigator.pushNamed(context, '/display');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lost Items'),
      ),
      //
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                saveLostItem(context);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
