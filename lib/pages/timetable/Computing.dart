import 'package:campus_connect_app/pages/timetable/timetable_home.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the package

Future<void> _launchURL(String url) async {
  try {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  } catch (e) {
    print('Error launching URL: $e');
  }
}

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
          // flexibleSpace: Container(
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       colors: [Color(0xFF509CF4), Color(0xFF3256C7)],
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //     ),
          //   ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => COMPUTING()),
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
              SizedBox(height: 250),
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
                  textStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  _launchURL(
                      'https://nsbm365.sharepoint.com/:x:/g/SOC/EfOYMrRHksxHqqOrpe8Zk5sBjMmmJE_LSixaJlsGNVjbmQ?e=Cv83i0'); // Replace with your URL
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
                  textStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  _launchURL(
                      'https://nsbm365.sharepoint.com/:x:/g/SOC/EVh-2GSx4oNKn3t3tpxbGugBxn0XdkW9NRAEtmXOy1OcDA?e=8jHtZY&CID=100be5e6-755d-6b74-5415-378fbcf13ec0'); // Replace with your URL
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
                  textStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  _launchURL(
                      'https://nsbm365.sharepoint.com/:x:/g/SOC/EV7j5wh44KZEhXFK_Tp-0lEBgpEfnho5dvU2Uai5WHNINA?e=CqNzIl&CID=2ad0edb8-5a1e-dda0-24a1-893917668182'); // Replace with your URL
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
                  textStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  _launchURL(
                      'https://nsbm365.sharepoint.com/:x:/g/SOC/Ee4g1D81szFDmcXxEuzQU8sBBK8cp_k0fkcWmC8y92KUdQ?e=IxqyXB'); // Replace with your URL
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
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => COMPUTING()),
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
              SizedBox(height: 250),
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
                  textStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  _launchURL(
                      'https://nsbm365.sharepoint.com/:x:/g/SOC/EV7j5wh44KZEhXFK_Tp-0lEBgpEfnho5dvU2Uai5WHNINA?e=CqNzIl&CID=640ecfcd-ce85-8152-24ec-5de09d86f709'); // Replace with your URL
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
                  textStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  _launchURL(
                      'https://nsbm365.sharepoint.com/:x:/g/SOC/EVh-2GSx4oNKn3t3tpxbGugBxn0XdkW9NRAEtmXOy1OcDA?e=8jHtZY&CID=0517f3a6-0e45-216b-32e7-8fb58f6f7c66'); // Replace with your URL
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

//                      Color.fromARGB(255, 2, 76, 55).withOpacity(1.0),

                  minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  textStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  _launchURL(
                      'https://nsbm365.sharepoint.com/:x:/g/SOC/EV7j5wh44KZEhXFK_Tp-0lEBgpEfnho5dvU2Uai5WHNINA?e=CqNzIl&CID=c36bdd2f-7842-28bd-2267-826250256962'); // Replace with your URL
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
                  textStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
                onPressed: () {
                  _launchURL(
                      'https://nsbm365.sharepoint.com/:x:/g/SOC/Ee4g1D81szFDmcXxEuzQU8sBBK8cp_k0fkcWmC8y92KUdQ?e=IxqyXB'); // Replace with your URL
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

class COMPUTING extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Computing Faculty',
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
              SizedBox(height: 250),
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
                  textStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
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
                  textStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
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
      home: COMPUTING(),
    ),
  );
}
