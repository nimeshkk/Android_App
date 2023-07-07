import 'package:campus_connect_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



import '../pages/home.dart';

class Button extends StatelessWidget {
  bool? isResponsive;
  double? width;
  Button({Key? key, this.width, this.isResponsive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>MyHomePage()), // Updated line
        );
      },
      child: Container(
        alignment: Alignment.center,
        width: width ?? 350,
        height: 170,
        child: Row(
          children: [
            Image.asset("img/click.png"),
          ],
        ),
      ),
    );
  }
}
