import 'package:campus_connect_app/pages/login/login_screen.dart';
import 'package:campus_connect_app/pages/sliders/sliders.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _showFirstImage = true;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _showFirstImage = !_showFirstImage;
      });

      // Simulating some async work
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          _isLoading = false;
        });

        Future.delayed(Duration(seconds: 1), () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => OnboardingScreen()),
          );
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.clamp,
           colors: [
  Color(0xFF2EB568),
  Color(0xFF39B970),
  Color(0xFF44BD78),
  Color(0xFF4FC180),
  Color(0xFF5AC588),
  Color(0xFF65C890),
  Color(0xFF70CC98),
  Color(0xFF7BD0A0),
  Color(0xFF86D4A8),
  Color(0xFF91D8B0),
  Color(0xFF9CDCB7),
  Color(0xFFA7E0BF),
  Color(0xFFB2E4C7),
  Color(0xFFBDE8CF),
  Color(0xFFC8ECD7),
  Color(0xFFD3EFDF),
  Color(0xFFDEF3E7),
  Color(0xFFE9F7EF),
  Color(0xFFF4FBF7),
  Colors.white,
],
          ),
        ),
        child: Stack(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Center(
                child: Image.asset(
                  'assets/campus.png',
                ),
              ),
            ),
            if (_isLoading)
              Positioned(
                bottom: 80,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  child: Theme(
                    data: ThemeData(primaryColor: Colors.white),
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


