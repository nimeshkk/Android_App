import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

class CustomeAppBar extends StatelessWidget {
  // const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding, 
        right: appPadding, 
        top: appPadding),
      child: Container(
        height: size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: white.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(Icons.arrow_back_ios_rounded, color: white),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: white.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(Icons.favorite_border_rounded, color: white),
            ),    
          ],
        )  
      ),
    );
  }
}