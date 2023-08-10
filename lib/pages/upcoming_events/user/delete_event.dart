import 'package:flutter/material.dart';

class DeleteEventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Event'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF509CF4), Color(0xFF3256C7)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/back.jpg'), // Set your background image asset
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Are you sure you want to delete this event?',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Go back to the previous screen
                },
                style: TextButton.styleFrom(
                  backgroundColor:
                      Colors.blue, // Set the background color to blue
                ),
                child: Text('Cancel', style: TextStyle(color: Colors.black)),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  // Perform delete action here
                  Navigator.pop(context); // Go back to the previous screen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(
                      255, 222, 75, 6), // Set the button background color
                ),
                child: Text('Delete', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ])),
      ),
    );
  }
}
