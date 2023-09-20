import 'package:flutter/material.dart';

class IEEE extends StatelessWidget {
  const IEEE({Key? key}) : super(key: key);

  Widget getAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
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
                image: AssetImage('assets/ieeelogo.jpg'),
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
    return Container(
      color: Colors.white,
      child: Scaffold(
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
                    'IEEE in NSBM',
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
                child: const Text(
                  'The IEEE Student Branch of NSBM Green University was established in 2015 and is composed of IEEE members from the Computing and Engineering faculty. In the Sri Lanka section, there is a very active Student Branch with several activities throughout the year. The greatest part is that some of these projects are conducted not just for NSBM undergraduates, but also for undergraduates from other State and non-State universities. Throughout the year, the IEEE Student Branch of NSBM constantly performs numerous valuable national and international projects.',
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
                  'assets/ieeephoto01.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 12),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: const Text(
                  'This is a very active Student Branch in the Sri Lanka section with many activities throughout the year. And the best thing is some of these projects are conducted for not only the Undergraduates of NSBM but also for all the other undergraduates from other State and non-State universities. Also, IEEE Student Branch of NSBM conducts many valuable national and international projects throughout the year.',
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
                  'assets/ieeephoto02.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: const Text(
                  'Volunteering is an act of an individual or group freely offering up their time and service to help. The role of volunteers is working for a specific task or Aim in the allocated team with the assistance of the team members.',
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
      ),
    );
  }
}
