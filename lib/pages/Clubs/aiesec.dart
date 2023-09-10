import 'package:flutter/material.dart';

class Aisec extends StatelessWidget {
  const Aisec({Key? key}) : super(key: key);

  
  Widget getAppBar(BuildContext context) {
    return AppBar(
      
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop(); 
        },
      ),
      flexibleSpace: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/aieseclogo.jpg'),
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
                  'AIESEC in NSBM',
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
                'AIESEC is the world’s largest youth led organization advocating for youth leadership through global affairs. As one of our organization’s functions, we facilitate global Internship opportunities in local organizations which are focusing on UN Sustainable Development Goals.',
                style: TextStyle(
                  fontSize: 18, 
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40), 
              child: Image.asset(
                'assets/aiesecphoto01.jpeg', 
                fit: BoxFit.cover, 
              ),
            ),
            SizedBox(height: 12),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12), 
              child: Text(
                'In 2017 AIESEC was initiated in the National School of Business Management as “AIESEC in NSBM”. AIESEC in NSBM was able to host two global villages in the university premises in 2018 and 2019 with over 200 international students from over 25 different countries. ',
                style: TextStyle(
                  fontSize: 18,
                )
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40), 
              child: Image.asset(
                'assets/aiesecphoto02.png', 
                fit: BoxFit.cover, 
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12), 
              child: Text(
                'Today, AIESEC in NSBM has over 90+ active global-minded and culturally sensitive members from across the island. As an Ofﬁcial Expansion, we have won the Most Outstanding Award and Most Progressive Expansion Award in 2018 & 2019, respectively.',
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

