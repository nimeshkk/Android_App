import 'package:campus_connect_app/widgets/button.dart';
import 'package:flutter/material.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({super.key});

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {

  List images=[

    "1f.png",
    "2f.png",
    
   
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
                alignment: Alignment.bottomCenter, 
                image: AssetImage(
                 
                  "img/"+images[index]
                  ),
                  fit: BoxFit.contain

                  
                
              )
            ),

          child: Container(
            margin:const EdgeInsets.only(top:30,left:10),
            // alignment: Alignment.topLeft, 
            child: Row(children: [
              Column(children: [
                // const Text(
                //   "Campus Connect ",
                //   style: TextStyle(
                //   fontSize: 20,
                  
                //   fontWeight: FontWeight.bold,
                //   color: Color.fromARGB(255, 0, 0, 0)
                // ),),
                

                Image.asset(
                       alignment: Alignment.topCenter,
                        "img/cc.png",
                        
                        width: 350,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                Button(),
              ],)
            ],)
          ),  
          );

      }),
    );
  }
}
