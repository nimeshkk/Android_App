import 'package:flutter/material.dart';
import '../../model/house.dart';
import 'package:campus_connect_app/pages/home_renting/screens/details/components/custome_app_bar.dart';
import 'components/bottom_buttons.dart';
import 'components/carousel_images.dart';
import 'components/house_details.dart';

class DetailsScreen extends StatefulWidget {
  // const DetailsScreen({super.key});

  final Key? key;
  final House house;

  // const DetailsScreen({required Key key, required this.house}) : super(key: key);

  DetailsScreen({required this.key, required this.house});

  //if we will get some errros, remove the new constructor
  
  @override

    //State<DetailsScreen> change to _DetailsScreenState

  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  CarouselImages(widget.house.moreImagesUrl),
                  CustomeAppBar(),
                ],
              ),
              HouseDetails(widget.house),
            ],
          ),
          BottomButtons(),
        ],
      ),
    );
  }
}

