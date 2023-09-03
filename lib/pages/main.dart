
import 'package:campus_connect_app/pages/lostfound_items/lost_item_model.dart';
import 'package:provider/provider.dart';
import 'package:campus_connect_app/pages/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';


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

        home: SplashScreen());

  }
}
