
import 'package:campus_connect_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';
// import 'package:campus_connect_app/pages/home_renting/constants/constants.dart';
// import 'package:campus_connect_app/pages/home_renting/screens/home/home_screen.dart';
// import 'package:campus_connect_app/pages/home_renting/screens/details/details_screen.dart';









void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'Flutter ',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const WelcomPage());
  }
}
