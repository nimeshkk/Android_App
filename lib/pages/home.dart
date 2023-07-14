import 'package:campus_connect_app/pages/event.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import 'welcome_Page.dart';
import 'lost.dart';
import 'clubs.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void navigateToCalendarApp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Calender1()),
    );
  }

  void navigateToLostPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Lost1()),
    );
  }

  //  void navigateToClubs(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) =>  clubs()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Bus Schedule",
      "Lost And Found",
      "Events",
      "Clubs",
      "Bodime",
    ];

    final List<Widget> images = [
      Container(
        color: Color.fromARGB(255, 45, 158, 96),
      ),
      Container(
        color:Color.fromARGB(255, 45, 158, 96),
      ),
      Container(
        color: Color.fromARGB(255, 45, 158, 96),
      ),
      Container(
        color:Color.fromARGB(255, 45, 158, 96),
      ),
      Container(
        color:Color.fromARGB(255, 45, 158, 96),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: VerticalCardPager(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {},
                  align: ALIGN.CENTER,
                  onSelectedItem: (index) {
                    if (titles[index] == 'Events') {
                      navigateToCalendarApp(context);
                    } else if (titles[index] == 'Lost And Found') {
                      navigateToLostPage(context);
                    }
                    //  else if (titles[index] == 'GPA Cal') {
                    //   navigateToClubs(context);
                    // }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


