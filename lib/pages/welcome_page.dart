import 'package:flutter/material.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({super.key});

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {

  List images=[
    
   "11.png",
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        

        scrollDirection:Axis.vertical ,
        itemCount:images.length,
        itemBuilder: (_, index){


          return Container(
            width: double.maxFinite,
            height: double.maxFinite,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/"+images[index]
                  ),
                
              )
            ),
          );

      }),
    );
  }
}