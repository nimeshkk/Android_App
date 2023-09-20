import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:campus_connect_app/pages/boarding_house/boarding_house_model.dart';
import 'package:campus_connect_app/pages/boarding_house/boarding_house_input.dart';

class BoardingHouseDisplayScreen extends StatelessWidget {
  // Method to delete a boarding house
  void deleteBoardingHouse(BuildContext context, String documentId) {
    FirebaseFirestore.instance
        .collection('boarding_houses') // Change to 'boarding_houses'
        .doc(documentId)
        .delete()
        .then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Color.fromARGB(223, 5, 119, 106),
          content: Text(
            'Boarding house deleted successfully',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );
    }).catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to delete boarding house: $error'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<BoardingHouseModel>(context);

    return Container(
      color: Colors.white,
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('boarding_houses')
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Text('No data available'); // Handle the case of no data
          }

          final List<BoardingHouse> boardingHouses = [];
          for (final DocumentSnapshot doc in snapshot.data!.docs) {
            final data = doc.data() as Map<String, dynamic>;
            // Add null checks for data fields
            final location = data['location'] as String? ?? '';
            final description = data['description'] as String? ?? '';
            final contactNumber = data['contactNumber'] as String? ?? '';
            boardingHouses.add(BoardingHouse(
              location: location,
              description: description,
              contactNumber: contactNumber,
            ));
          }

          model.setBoardingHouses(boardingHouses);

          return Scaffold(
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
            body: ListView.builder(
              itemCount: boardingHouses.length,
              itemBuilder: (ctx, index) {
                final house = boardingHouses[index];
                return Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(223, 231, 251, 248),
                    border: Border.all(
                      color: Color.fromARGB(223, 5, 119, 106),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    title: Text(
                      house.location,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          house.description,
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          house.contactNumber,
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
                        deleteBoardingHouse(
                            context, snapshot.data!.docs[index].id);
                      },
                    ),
                  ),
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BoardingHouseInputScreen(),
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
        },
      ),
    );
  }
}
