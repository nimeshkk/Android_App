import 'package:campus_connect_app/pages/about_us/aboutcontroller.dart';
import 'package:campus_connect_app/pages/about_us/aboutuswelcome.dart';
import 'package:campus_connect_app/pages/lostfound_items/lost_item_model.dart';
import 'package:campus_connect_app/pages/upcoming_events/EVENT/event_item_model.dart';
import 'package:provider/provider.dart';
// import 'package:campus_connect_app/pages/splashscreen.dart';
import 'package:campus_connect_app/pages/about_us/about01.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:campus_connect_app/screens/onboding/onboding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyC3N0FYif_M4jq69yjqsV34NUUaN50tVuk",
        appId: "1:277703009425:android:b4098087432431659c4b30",
        messagingSenderId: "277703009425",
        projectId: "nsbmuniapp"),
  );
  runApp(
    DevicePreview(
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => LostItemModel()),
          ChangeNotifierProvider(create: (context) => eventItemModel()),
        ],
        child: MyApp(),
      ),
    ),
  );

  /*runApp(
    DevicePreview(
      builder: (context) => ChangeNotifierProvider(
        create: (context) => LostItemModel(),
        child: MyApp(),
      ),
    ),
  // )*/

  /* runApp(
    DevicePreview(
      builder: (context) => ChangeNotifierProvider(
        create: (context) => eventItemModel(),
        child: MyApp(),
      ),
    ),
  );*/
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Flutter Way',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 181, 244, 240),
        primarySwatch: Colors.blue,
        fontFamily: "Intel",
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          errorStyle: TextStyle(height: 0),
          border: defaultInputBorder,
          enabledBorder: defaultInputBorder,
          focusedBorder: defaultInputBorder,
          errorBorder: defaultInputBorder,
        ),
      ),
      home: OnbodingScreen(),
    );
  }
}

const defaultInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(
    color: Color(0xFFDEE3F2),
    width: 1,
  ),
);
