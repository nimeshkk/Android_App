import 'package:flutter/material.dart';
import 'lostitem_input.dart'; // Import the lostitem_input.dart file
import 'package:provider/provider.dart';
import 'package:campus_connect_app/pages/lostfound_items/lost_item_model.dart'; // Adjust the import path based on your project structure

class LostItemDisplayScreen extends StatelessWidget {
  //final List<Map<String, String>> lostItems; // Replace with actual data model

  //LostItemDisplayScreen(this.lostItems);

  @override
  Widget build(BuildContext context) {
    final lostItems = Provider.of<LostItemModel>(context).lostItems;
    return Scaffold(
      appBar: AppBar(
        title: Text('Lost Items'),
      ),
      body: ListView.builder(
        itemCount: lostItems.length,
        itemBuilder: (ctx, index) {
          final item = lostItems[index];
          return ListTile(
            title: Text(item.itemName),
            subtitle: Text(item.contactNumber),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Implement delete logic and update UI
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the LostItemInputScreen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LostItemInputScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
