import 'package:flutter/material.dart';
import 'package:campus_connect_app/pages/home_renting/constants/constants.dart';

class BottomButtons extends StatelessWidget {
  // const BottomButtons({super.key});


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: appPadding),
      child: Container(
        width: size.width * 0.4,
        height: 60,
        decoration: BoxDecoration(
          color: darkBlue,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(
            color: darkBlue.withOpacity(0.6),
            offset: Offset(0, 10),
            blurRadius: 10,
          )]
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.map_outlined,
              color: white,
            ),
            Text(
              ' Map View',
              style: TextStyle(
                color: white,
                fontSize: 16,
                // fontWeight: FontWeight.w600,
              )
            ),
          ],
        ),
      ),
    );
  }
}