import 'package:campus_connect_app/pages/home2.dart';
import 'package:campus_connect_app/pages/login/login_screen.dart';
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
            MaterialPageRoute(builder: (context) => LoginScreen()),
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
              Color.fromARGB(255, 78, 179, 250), 
              Color.fromARGB(255, 109, 198, 250), 
              Color.fromARGB(255, 135, 199, 250), 
              Color.fromARGB(255, 192, 227, 253), 
              Color.fromARGB(255, 199, 230, 255), 
              Color.fromARGB(255, 226, 245, 255), 
              Color.fromARGB(255, 242, 250, 253), 
              Color.fromARGB(255, 255, 255, 255), 
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
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

