import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:campus_connect_app/pages/lostfound_items/lost_item_model.dart';
import 'package:campus_connect_app/pages/lostfound_items/lostitem_input.dart';

class LostItemDisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<LostItemModel>(context);

    // Fetch lost items data from Firestore
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('lost_items').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Display loading indicator while fetching data
        }
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        // Process the retrieved data
        if (snapshot.hasData) {
          final List<LostItem> lostItems = [];
          for (final DocumentSnapshot doc in snapshot.data!.docs) {
            final data = doc.data() as Map<String, dynamic>;
            lostItems.add(LostItem(
              itemName: data['itemName'],
              description: data['description'],
              contactNumber: data['contactNumber'],
            ));
          }

          model.setLostItems(lostItems); // Set the data in your Provider model

          // Display the lost items in a ListView
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
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.description),
                      Text(item.contactNumber),
                    ],
                  ),
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
        } else {
          return CircularProgressIndicator(); // Display a loading indicator if there's no data
        }
      },
    );
  }
}