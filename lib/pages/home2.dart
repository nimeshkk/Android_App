import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key});

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              'Campus Connect',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                tabs: [
                  Tab(text: 'Main'),
                  Tab(text: 'Feature'),
                  Tab(text: 'About'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 300,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      List<String> imagePaths = [
                        'assets/bus.jpg',
                        'assets/events.jpg',
                        'assets/Lost.jpg',

                        
                      ];

                      return Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(imagePaths[index]),
                          
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                  Text('hello world!'),
                  Text('how are you?'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// class CircleTabIndicator extends Decoration{
 
//   @override
//   BoxPainter createBoxPainter([VoidCallback? onChanged]){
//     return _CirclePainter(color:color,radius:radius);
//   }
  
// }

// class _CirclePainter extends BoxPainter{
//    final Color color;
//   final double radius;
//   _CirclePainter({required this.color,required this.radius});
//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration configuration)
//    {
//     // TODO: implement paint
//   }

// }