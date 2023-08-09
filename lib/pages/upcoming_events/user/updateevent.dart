import 'package:flutter/material.dart';

class UpdateEventScreen extends StatefulWidget {
  @override
  _UpdateEventScreenState createState() => _UpdateEventScreenState();
}

class _UpdateEventScreenState extends State<UpdateEventScreen> {
  late String updatedName;
  late String updatedDescription;

  @override
  void initState() {
    super.initState();
    updatedName = '';
    updatedDescription = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Event'),
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    updatedName = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Updated Event Name',
                  hintText: 'Enter updated event name',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    updatedDescription = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Updated Description',
                  hintText: 'Enter updated event description',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    updatedDescription = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Updated organization',
                  hintText: 'Enter updated event organization',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    updatedDescription = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Updated Description',
                  hintText: 'Enter updated event location',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Perform update action here
                  Navigator.pop(context); // Go back to the previous screen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(
                      190, 127, 222, 60), // Set the button background color
                ),
                child:
                    Text('Update Event', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
