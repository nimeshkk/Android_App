// import 'package:flutter/material.dart';

// class LostAndFound extends StatefulWidget {
//   const LostAndFound({Key? key}) : super(key: key);

//   @override
//   State<LostAndFound> createState() => _LostAndFoundState();
// }

// class _LostAndFoundState extends State<LostAndFound>
//     with TickerProviderStateMixin {
//   late TabController _tabController; // Declare the TabController

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Lost & Found'),
//         centerTitle: true,
//         backgroundColor: const Color.fromARGB(255, 0, 219, 132),
//       ),
//       body: Column(
//         children: [
//           const SizedBox(height: 15),
//           Card(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             elevation: 5,
//             child: Container(
//               width: 250,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: Colors.green.withOpacity(0.2),
//               ),
//               child: TabBar(
//                 indicator: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   color: Colors.white,
//                 ),
//                 controller: _tabController, // Use the TabController instance
//                 isScrollable: true,
//                 labelPadding: const EdgeInsets.symmetric(horizontal: 20),
//                 tabs: const [
//                   Tab(
//                     child: Text(
//                       'Lost',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                   Tab(
//                     child: Text(
//                       'Found',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 15),
//           Expanded(
//             child: TabBarView(
//               controller: _tabController, // Use the same TabController instance
//               children: [
//                 ListView.builder(
//                   physics: const BouncingScrollPhysics(),
//                   shrinkWrap: true,
//                   itemCount: 10,
//                   itemBuilder: (context, index) {
//                     return Card(
//                       margin: const EdgeInsets.symmetric(
//                           horizontal: 10, vertical: 5),
//                       child: ListTile(
//                         title: Text('Lost Item $index'),
//                         subtitle: const Text('Description'),
//                         trailing: const Icon(
//                           Icons.call,
//                           color: Colors.green,
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//                 ListView.builder(
//                   physics: const BouncingScrollPhysics(),
//                   shrinkWrap: true,
//                   itemCount: 10,
//                   itemBuilder: (context, index) {
//                     return Card(
//                       margin: const EdgeInsets.symmetric(
//                           horizontal: 10, vertical: 5),
//                       child: ListTile(
//                         title: Text('Found Item $index'),
//                         subtitle: const Text('Description'),
//                         trailing: const Icon(
//                           Icons.call,
//                           color: Colors.green,
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
