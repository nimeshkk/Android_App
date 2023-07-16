
import 'package:flutter/material.dart';

class home2 extends StatefulWidget {
  const home2({super.key});

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> with TickerProviderStateMixin {
 
  @override
  Widget build(BuildContext context) {
     TabController _tabController =TabController(length:3, vsync: this);
    return Scaffold(
      
      body: Column(
       children: [
        Container(
          padding: const EdgeInsets.only(top:70,left:20),
          child:Row (
            children: [
            Icon(Icons.menu,size: 30,color: Colors.black,),


            Expanded(child: Container()),
            Container(

              margin:const EdgeInsets.symmetric(horizontal: 10),
              width: 50,
              height: 50,

              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              //   color: Color(0xffF4B96C).withOpacity(.8)),

              ),

            
          ],)
        ),
        SizedBox(height:40 ,), 
        Container(
          margin: const EdgeInsets.only(left:20),
          child:Text(
          'Campus Connect',
          style: TextStyle(
          fontSize: 20, 
          fontWeight: FontWeight.bold, 
          color: Colors.black, 
    
         ),
        ),
        
        ),
        SizedBox(height: 30,),
        Container(
          child:TabBar(
            controller: _tabController,
            tabs: [
              Tab(text:'My Orders1'),
              Tab(text:'My Orders2'),
              Tab(text:'My Orders3'),
              
            ],
          ),
        ),
        Container(
          height: 300,
          child: TabBarView(
            controller: _tabController,
            children: [
              Text("hi"),
              Text('hello world!'),
              Text('how are you?'),

          ],)
        ),
       ],
       
      ),
    );
  }
}