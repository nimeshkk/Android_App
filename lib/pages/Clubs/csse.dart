import 'package:flutter/material.dart';

class CSSE extends StatelessWidget {
  const CSSE({Key? key}) : super(key: key);

  Widget getAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      flexibleSpace: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/csselogo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: getAppBar(context),
        preferredSize: Size.fromHeight(200),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'CSSE Circle',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 2, 76, 55),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget fermentum ultricies, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. Donec euismod, nisl eget fermentum ultricies, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. Donec euismod, nisl eget fermentum ultricies, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Image.asset(
                'assets/cssephoto01.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 12),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget fermentum ultricies, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. Donec euismod, nisl eget fermentum ultricies, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. Donec euismod, nisl eget fermentum ultricies, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Image.asset(
                'assets/cssephoto02.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget fermentum ultricies, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
