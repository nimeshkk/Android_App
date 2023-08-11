import 'package:campus_connect_app/pages/home_renting/app_styles.dart';
import 'package:campus_connect_app/pages/home_renting/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

class ProductDetaildPage extends StatelessWidget {
  const ProductDetaildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
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
            Expanded(
              child: Column(
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
              ),
            ),
            GestureDetector(
              onTap: () {
                debugPrint('Rent Now Tapped');
              },
              child: Container(
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kBorderRadius10
                    ),
                    gradient: kLinearGradientBlue,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: kPadding24,
                ),
                child: Center(
                  child: Text(
                    'Rent Now',
                    style: kRalewaySemiBold.copyWith(
                      color: kWhite,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: kPadding20,
          ),
          child: Column(
            children: [
              Container(
                height: 319,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kBorderRadius20
                  ),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 0,
                      color: kBlack.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 18),
                    ),
                  ],
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                    ),
                  ),
                ),
                child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(kBorderRadius20),
                                    bottomRight: Radius.circular(kBorderRadius20),
                                  ),
                                  gradient: kLinearGradientBlack,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(kPadding20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        radius: 17,
                                        backgroundColor: kBlack.withOpacity(0.24),
                                        child: SvgPicture.asset(
                                          'assets/icons/icon_arrow_back.svg',
                                          // color: kWhite,
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 17,
                                        backgroundColor: kBlack.withOpacity(0.24),
                                        child: SvgPicture.asset(
                                          'assets/icons/icon_bookmark.svg',
                                          // color: kWhite,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Doctor Bodim House',
                                        style: kRalewayBold.copyWith(
                                          color: kWhite,
                                          fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                                        ),
                                        
                                      ),
                                      SizedBox(
                                        height: SizeConfig.blockSizeVertical! * 0.5,
                                      ),
                                      Text(
                                        '250m Dampe Rd, Meegoda, Godagama.',
                                        style: kRalewayRegular.copyWith(
                                          color: kWhite,
                                          fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                        ),
                                      ),
                                      SizedBox(
                                        height: SizeConfig.blockSizeVertical! * 1.5,
                                      ),
                                      Row(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: SizeConfig.blockSizeHorizontal! * 7,
                                              width: SizeConfig.blockSizeHorizontal! * 7,
                                              decoration: BoxDecoration(
                                                color: kWhite.withOpacity(0.2),
                                                borderRadius: BorderRadius.circular(
                                                  kBorderRadius5
                                                ),
                                              ),
                                              padding: const EdgeInsets.all(
                                                kPadding4
                                              ),
                                              child: SvgPicture.asset(
                                                'assets/icon_bedroom_white.svg',
                                              ),
                                            ),
                                            SizedBox(
                                              width: SizeConfig.blockSizeHorizontal! * 2.5,
                                            ),
                                            Text(
                                              '6 Beadrooms',
                                              style: kRalewayRegular.copyWith(
                                                color: kWhite,
                                                fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: SizeConfig.blockSizeHorizontal! * 7.5,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: SizeConfig.blockSizeHorizontal! * 7,
                                              width: SizeConfig.blockSizeHorizontal! * 7,
                                              decoration: BoxDecoration(
                                                color: kWhite.withOpacity(0.2),
                                                borderRadius: BorderRadius.circular(
                                                  kBorderRadius5
                                                ),
                                              ),
                                              padding: const EdgeInsets.all(
                                                kPadding4
                                              ),
                                              child: SvgPicture.asset(
                                                'assets/icon_bathroom_white.svg',
                                              ),
                                            ),
                                            SizedBox(
                                              width: SizeConfig.blockSizeHorizontal! * 2.5,
                                            ),
                                            Text(
                                              '2 Bathrooms',
                                              style: kRalewayRegular.copyWith(
                                                color: kWhite,
                                                fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    ],
                                  )
                                ],
                              ),
                              )
                          ],
                        ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                children: [
                  Text(
                    'Description',
                      style: kRalewayMedium.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                  )
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
               ReadMoreText(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam dolor, quis aliquam nisl nunc ac nisl. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam dolor, quis aliquam nisl nunc ac nisl. Lorem ipsum dolor sit amet.',
                trimLines: 2,
                trimMode: TrimMode.Line,
                delimiter: '...',
                trimCollapsedText: 'Read More',
                trimExpandedText: 'Read Less',
                style: kRalewayRegular.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  color: kGrey85,
                ),
                moreStyle: kRalewayRegular.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  color: kBlue,
                ),
                lessStyle: kRalewayRegular.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  color: kBlue, 
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS84AHMHKdef51QsjaVySZXj85iIXi2CmJaeiy2PlfYRg&s'
                        ),
                        backgroundColor: kBlue,
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Bodim House',
                            style: kRalewayMedium.copyWith(
                              color: kBlack,
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            ),
                          ),
                          SizedBox(
                           height: SizeConfig.blockSizeVertical! * 0.2,
                          ),
                          Text(
                            'Owner',
                            style: kRalewayMedium.copyWith(
                              color: kGrey85,
                              fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: kBlue.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(
                            kBorderRadius5
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/icon_phone.svg',
                        ),
                      ),
                      SizedBox(
                           width: SizeConfig.blockSizeHorizontal! * 4,
                          ),
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: kBlue.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(
                            kBorderRadius5
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/icon_message.svg',
                        ),
                        ),
                        
                     ],
                  )
                ]
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                children: [
                  Text(
                    'Gallery',
                      style: kRalewayMedium.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                  )
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                  crossAxisSpacing: kPadding16,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: kBlue,
                      borderRadius: BorderRadius.circular(
                        kBorderRadius5
                      ),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                        'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80'
                        ),
                      ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: index == 4-1? kBlack.withOpacity(0.3): null,
                    ),
                    child: Center(
                      child: index == 4-1? Text(
                        '+ 4',
                        style: kRalewayMedium.copyWith(
                          color: kWhite,
                          fontSize: SizeConfig.blockSizeHorizontal! * 5,
                        ),
                      ): null,
                    ),
                  )

                  );
                },
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Container(
                height: 161,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kBorderRadius20
                  ),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                    'assets/map_sample.jpeg'
                    ),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 136,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                            kBorderRadius20,
                          ),
                          bottomRight: Radius.circular(
                            kBorderRadius20,
                          ),
                        ),
                        gradient: kLinearGradientBlue,
                        // gradient: kLinearGradientWhite,
                      ),
                    ),
                  ),
                ],
              ),
              ),
              const SizedBox(
                height: kPadding24,
              ),

            ],
          ),
        ),
      ),
    );
  }
}