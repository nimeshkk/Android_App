import 'package:campus_connect_app/pages/timetable/timetable_home.dart';
import 'package:flutter/material.dart';

class PLYMOUTH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Plymouth-Batch',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Color.fromARGB(255, 2, 76, 55),
          ),
        ),

        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [Color(0xFF509CF4), Color(0xFF3256C7)],
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //     ),
        //   ),
        // ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => BUSINESS()),
            );
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back01.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Select your Batch',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), // Add space between text and buttons
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor:

                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),

//                       Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),

                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  // Add onPressed action
                },
                child: Text(
                  '20.2',
                  style: TextStyle(

                    color: Colors.white,

//                     color: const Color.fromARGB(255, 255, 255, 255),

                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor:

                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),

//                       Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),

                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  // Add onPressed action
                },
                child: Text(
                  '21.1',
                  style: TextStyle(

                    color: Colors.white,

//                     color: const Color.fromARGB(255, 255, 255, 255),

                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor:

                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),
                  minimumSize: Size(300, 50),

//                       Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  // Add onPressed action
                },
                child: Text(
                  '21.2',
                  style: TextStyle(

                    color: Colors.white,

//                     color: const Color.fromARGB(255, 255, 255, 255),

                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor:

                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),

//                      Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),

                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  // Add onPressed action
                },
                child: Text(
                  '22.1',
                  style: TextStyle(

                    color: Colors.white,

//                     color: const Color.fromARGB(255, 255, 255, 255),

                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Add any additional widgets or buttons here
            ],
          ),
        ),
      ),
    );
  }
}

class UGC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'UGC-Batch',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Color.fromARGB(255, 2, 76, 55),
          ),
          // flexibleSpace: Container(
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       colors: [Color(0xFF509CF4), Color(0xFF3256C7)],
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //     ),
          //   ),
          // ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => BUSINESS()),
            );
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back01.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Select your Batch',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), // Add space between text and buttons
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor:

                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),

//                       Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),

                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  // Add onPressed action
                },
                child: Text(
                  '20.2',
                  style: TextStyle(

                    color: Colors.white,

//                     color: const Color.fromARGB(255, 255, 255, 255),

                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor:

                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),

                      Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),

                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 249, 249, 249)),
                ),
                onPressed: () {
                  // Add onPressed action
                },
                child: Text(
                  '21.1',
                  style: TextStyle(

                    color: Colors.white,

//                     color: const Color.fromARGB(255, 255, 255, 255),

                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor:

                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),

//                       Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),

                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  // Add onPressed action
                },
                child: Text(
                  '21.2',
                  style: TextStyle(

                    color: Colors.white,

//                     color: const Color.fromARGB(255, 255, 255, 255),

                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor:

                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),

//                       Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),

                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  // Add onPressed action
                },
                child: Text(
                  '22.1',
                  style: TextStyle(

                    color: Colors.white,

//                     color: const Color.fromARGB(255, 255, 255, 255),

                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Add any additional widgets or buttons here
            ],
          ),
        ),
      ),
    );
  }
}

// Import your pages

class BUSINESS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Business Faculty',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Color.fromARGB(255, 2, 76, 55),
          ),

//         title: Text('Business Faculty'),
//         flexibleSpace: Container(
//           // decoration: BoxDecoration(
//           //   gradient: LinearGradient(
//           //     colors: [Color(0xFF509CF4), Color(0xFF3256C7)],
//           //     begin: Alignment.topCenter,
//           //     end: Alignment.bottomCenter,
//           //   ),
//           // ),

        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Timetable()),
            );
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back01.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Select a Category:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor:

                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),

//                       Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),

                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => PLYMOUTH()),
                  );
                },
                child: Text(
                  'Plymouth',
                  style: TextStyle(

                      color: Colors.white,

//                       color: const Color.fromARGB(255, 255, 255, 255),

                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor:

                      Color.fromARGB(255, 2, 76, 55).withOpacity(0.8),

//                       Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),

                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  textStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => UGC()),
                  );
                },
                child: Text(
                  'UGC',
                  style: TextStyle(

                      color: Colors.white,

//                       color: const Color.fromARGB(255, 255, 255, 255),

                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: BUSINESS(),
    ),
  );
}
