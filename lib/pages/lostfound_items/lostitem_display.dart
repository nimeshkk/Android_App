import 'package:flutter/material.dart';

class LostItemDisplayScreen extends StatelessWidget {
  final List<Map<String, String>> lostItems; // Replace with actual data model

  LostItemDisplayScreen(this.lostItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lost Items'),
      ),
      body: ListView.builder(
        itemCount: lostItems.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            // title: Text(lostItems[index]['itemName']),
            //  subtitle: Text(lostItems[index]['contactNumber']),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Implement delete logic and update UI
              },
            ),
          );
        },
      ),
    );
  }
}
