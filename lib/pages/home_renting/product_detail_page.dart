import 'package:campus_connect_app/pages/home_renting/app_styles.dart';
import 'package:campus_connect_app/pages/home_renting/size_config.dart';
import 'package:flutter/material.dart';

class ProductDetaildPage extends StatelessWidget {
  const ProductDetaildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: kPadding8
          ),
          height: 43,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
            horizontal: kPadding20,
          ),
          child: Row(
            children: [
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Price',
                      style: kRalewayRegular.copyWith(
                        color: kGrey85,
                        fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 0.5,
                  ),
                  Text(
                    'Rs 10 000 / Month',
                      style: kRalewayMedium.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(),
      ),
    );
  }
}