import 'package:flutter/material.dart';
//import 'lostitem_input.dart';

/*class lostandfound extends StatelessWidget {
=======
class Lostandfound extends StatefulWidget {
  @override
  State<Lostandfound> createState() => _LostandfoundState();
}

class _LostandfoundState extends State<Lostandfound> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lost and Found App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        //  '/': (ctx) => LostItemInputScreen(),
        '/display': (ctx) =>
            LostItemDisplayScreen(), // Pass your lost items data here
      },
    );
  }
}*/
import 'package:campus_connect_app/pages/home2.dart';

import 'eventitem_display.dart';

class eventsitem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/eventnew.png",
              height: MediaQuery.of(context).size.height * 0.53,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 0),

            GestureDetector(
              onTap: () {},
              child: const Text(
                "Welcome to eventHome",
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 76, 55),
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),

            GestureDetector(
              onTap: () {},
              child: const Text(
                " Create memorable moments with the touch of your fingertips! Craft your perfect event experience effortlessly ",
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 76, 55),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            //login button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: const Color.fromARGB(223, 5, 119, 106),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    eventItemDisplayScreen()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "proceed",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //register button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color.fromARGB(223, 5, 119, 106),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home2()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Go to Home",
                          style: TextStyle(
                            color: Color.fromARGB(255, 2, 76, 55),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
