//import 'package:campus_connect_app/pages/lost&found/lost.dart';
import 'package:campus_connect_app/pages/lostfound_items/lostitem_display.dart';
import 'package:campus_connect_app/pages/lostfound_items/lostitem_input.dart';
import 'package:campus_connect_app/pages/lostfound_items/lost_item_model.dart';
import 'package:provider/provider.dart';

//import 'package:campus_connect_app/pages/welcome_page.dart';
import 'package:campus_connect_app/pages/splashscreen.dart';
import 'package:campus_connect_app/pages/upcoming_events/event_homepage.dart';

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
//import 'package:campus_connect_app/pages/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart';
// import 'package:campus_connect_app/pages/home_renting/constants/constants.dart';
// import 'package:campus_connect_app/pages/home_renting/screens/home/home_screen.dart';
// import 'package:campus_connect_app/pages/home_renting/screens/details/details_screen.dart';

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
      builder: (context) => ChangeNotifierProvider(
        create: (context) => LostItemModel(),
        child: MyApp(),
      ),
    ),
  );
}

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
        home: LostItemDisplayScreen());
  }
}
