import 'package:flutter/material.dart';

class FOSS extends StatelessWidget {
  const FOSS({Key? key}) : super(key: key);

  
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
                image: AssetImage('assets/fosslogo.png'),
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
                  'FOSS Community - NSBM',
                  style: TextStyle(
                    fontSize: 24, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12), 
              child: Text(
                'The term "FOSS community of NSBM" is somewhat ambiguous, as it combines two different and unrelated concepts: "FOSS" stands for Free and Open Source Software, while "NSBM" typically refers to National Socialist Black Metal, a subgenre of heavy metal music that often involves extreme and controversial themes.',
                style: TextStyle(
                  fontSize: 18, 
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40), 
              child: Image.asset(
                'assets/fossphoto01.jpg', 
                fit: BoxFit.cover, 
              ),
            ),
            SizedBox(height: 12),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12), 
              child: Text(
                'FOSS is a collaborative community dedicated to creating and distributing software with open and accessible source code, fostering innovation and freedom. On the other hand, NSBM is a niche and controversial subgenre of heavy metal music known for its extreme themes.',
                style: TextStyle(
                  fontSize: 18,
                )
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40), 
              child: Image.asset(
                'assets/fossphoto02.jpg', 
                fit: BoxFit.cover, 
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12), 
              child: Text(
                'It is unclear if "FOSS community of NSBM" represents a specific group or initiative that combines these two worlds or if it is a misunderstanding or misinterpretation of the acronyms.',
                style: TextStyle(
                  fontSize: 18, 
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

