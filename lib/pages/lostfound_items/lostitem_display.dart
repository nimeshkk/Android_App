import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:campus_connect_app/pages/lostfound_items/lost_item_model.dart';
import 'package:campus_connect_app/pages/lostfound_items/lostitem_input.dart';

class LostItemDisplayScreen extends StatelessWidget {
  // Method to delete a lost item
  void deleteLostItem(BuildContext context, String documentId) {
    FirebaseFirestore.instance
        .collection('lost_items')
        .doc(documentId)
        .delete()
        .then((_) {
      // Item deleted successfully from Firestore, now update the UI.
      /*ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Item deleted successfully'),
        ),
      );*/
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor:
              Color.fromARGB(223, 5, 119, 106), // Set the background color
          content: Text(
            'Item deleted successfully',
            style: TextStyle(
              color: Colors.white, // Set the text color
            ),
          ),
        ),
      );
    }).catchError((error) {
      // Handle any errors that occur during the delete process.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to delete item: $error'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<LostItemModel>(context);

    // Fetch lost items data from Firestore
    return Stack(
      // Use a Stack to place the background image and other widgets
      children: [
        // Background Image
        Image.asset(
          'assets/lost4.png', // Replace with your image asset path
          fit: BoxFit.cover, // You can adjust the fit property as needed
          width: double.infinity,
          height: double.infinity,
        ),
        StreamBuilder<QuerySnapshot>(
          stream:
              FirebaseFirestore.instance.collection('lost_items').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
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

              model.setLostItems(
                  lostItems); // Set the data in your Provider model

              // Display the lost items in a ListView
              return Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Lost Items",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        color: Color.fromARGB(255, 2, 76, 55)),
                  ),
                ),
                body: ListView.builder(
                  itemCount: lostItems.length,
                  itemBuilder: (ctx, index) {
                    final item = lostItems[index];
                    return Container(
                      margin: EdgeInsets.all(10.0), // Add margin for spacing
                      padding: EdgeInsets.all(10.0), // Add padding for spacing
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(223, 5, 119, 106),
                          width: 1.0, // Adjust border width as needed
                        ),
                        borderRadius:
                            BorderRadius.circular(10.0), // Add border radius
                      ),
                      child: ListTile(
                        title: Text(
                          item.itemName,
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
                              item.contactNumber,
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
                            // Implement delete logic and update UI
                            // Call the deleteLostItem method when the delete button is pressed
                            deleteLostItem(
                                context, snapshot.data!.docs[index].id);
                          },
                        ),
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
                  backgroundColor: Color.fromARGB(223, 5, 119, 106),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              );
            } else {
              return CircularProgressIndicator(); // Display a loading indicator if there's no data
            }
          },
        ),
      ],
    );
  }
}
