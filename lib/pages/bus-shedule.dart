
import 'package:campus_connect_app/pages/home2.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Bus(),
    );
  }
}

class Bus extends StatefulWidget {
  @override
  _BusState createState() => _BusState();
}

class _BusState extends State<Bus> {
  // void navigateToCalendarApp(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => Calender1()),
  //   );
  // }

  // void navigateToLostPage(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => Lost1()),
  //   );
  // }

  //  void navigateToClubs(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) =>  clubs()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Bus Schedule ",
      "Bus Schedule2",
      "Bus Schedule3",
      "Bus Schedule4",
      "Bus Schedule5",
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
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> Home2()));
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
                  // onSelectedItem: (index) {
                  //   if (titles[index] == 'Events') {
                  //     navigateToCalendarApp(context);
                  //   } else if (titles[index] == 'Lost And Found') {
                  //     navigateToLostPage(context);
                  //   }
                  //    else if (titles[index] == 'GPA Cal') {
                  //     navigateToClubs(context);
                  //   }
                  // },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


