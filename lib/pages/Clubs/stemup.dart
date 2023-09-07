import 'package:flutter/material.dart';

class StemUp extends StatelessWidget {
  const StemUp({Key? key}) : super(key: key);

  
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
                  'The STEMUP Foundation',
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
                'The STEMUP Foundation is a not for profit organization whose mission is to inspire and engage students to become interested in pursuing STEM degrees and careers. Our mission is fulfilled through the programs and resources we offer to the South Asian Community.',
                style: TextStyle(
                  fontSize: 18, 
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40), 
              child: Image.asset(
                'assets/stemup3.jpg', 
                fit: BoxFit.cover, 
              ),
            ),
            SizedBox(height: 12),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12), 
              child: Text(
                'STEMUP builds critical thinking abilities, creativity and collaboration skills. Gaining STEM proficiency provides the basis for these skills and builds the flexibility to adapt quickly to frequent changes in the labour market. STEMUP Educational Foundation runs several initiatives to get students interested in STEM as early as possible.',
                style: TextStyle(
                  fontSize: 18,
                )
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40), 
              child: Image.asset(
                'assets/stemup4.jpg', 
                fit: BoxFit.cover, 
              ),
            ),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12), 
              child: Text(
                'STEMUP Educational Foundation is a registered not for profit Association in Sri Lanka under the Companies Act No. 07 of 2007',
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


