import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:campus_connect_app/pages/home_renting/app_styles.dart';
import 'package:campus_connect_app/pages/home_renting/size_config.dart';
import 'package:campus_connect_app/pages/home_renting/product_detail_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    'House', 
    'Apartment', 
    'Hotel', 
    'Villa',
    'Cottage',
    ]; // Option 2

    int current = 0;
    
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                horizontal: kPadding20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location', style: kRalewayRegular.copyWith(
                            color: kGrey83,
                            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 0.5,
                        ),
                        Row(
                          children: [
                            Text(
                              'Jakarta', style: kRalewayMedium.copyWith(
                                color: kBlack,
                                fontSize: SizeConfig.blockSizeHorizontal! * 5,
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 0.5,
                            ),
                            SvgPicture.asset(
                              'assets/icon_dropdown.svg'
                              ),
                          ],
                        )
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/icon_notification_has_notif.svg',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),

              /////////////////////////////////
              Padding(
                padding: EdgeInsets.symmetric(
                horizontal: kPadding20,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: kRalewayRegular.copyWith(
                          color: kBlack,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: kPadding16,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(kPadding8),
                            child: SvgPicture.asset(
                              'assets/icon_search.svg',
                            ),
                          ),
                          hintText: 'Search',
                          border: kInputBorder,
                          errorBorder: kInputBorder,
                          disabledBorder: kInputBorder, 
                          focusedBorder: kInputBorder,
                          enabledBorder: kInputBorder,
                          hintStyle: kRalewayRegular.copyWith(
                            color: kGrey85,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          ),
                          filled: true,
                          fillColor: kWhiteF7,
                        ),
                      )
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 4.0,
                    ),
                    Container(
                      height: 49,
                      width: 49,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius10),
                        gradient: kLinearGradientBlue,
                      ),
                      child: SvgPicture.asset(
                        'assets/icon_filter.svg',
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: kPadding24,),
              SizedBox(
                width: double.infinity,
                height: kPadding24,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: index == 0 ? kPadding20 : 12,
                          right: index == categories.length - 1 ? kPadding20 : 0,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: kPadding16,
                        ),
                        height: 34,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              offset: const Offset(0, 18),
                              blurRadius: 10,
                              color: current == index 
                              ? kBlue.withOpacity(0.1) 
                              : kBlue.withOpacity(0),
                            ),
                          ],
                          gradient: current == index
                          ? kLinearGradientBlue : kLinearGradientWhite,
                          borderRadius: BorderRadius.circular(
                            kBorderRadius10
                          ),
                        ),
                        child: Center(
                          child: Text(
                            categories[index], 
                            style: kRalewayMedium.copyWith(
                              color: current == index 
                              ? kWhite : kGrey85,
                              fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: kPadding24,),
              Padding(
                padding: const EdgeInsets.symmetric(
                horizontal: kPadding20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Near from you', style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                    Text('See more', style: kRalewayRegular.copyWith(
                        color: kGrey85,
                        fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              SizedBox(
                height: 272,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return GestureDetector(
                      onTap: (()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDetaildPage(),
                      )
                      )),
                      child: Container(
                        height: 272,
                        width: 222,
                        margin: EdgeInsets.only(
                          left: kPadding20,
                          right: index == 5-1 ? kPadding20 : 0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            kBorderRadius20
                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              offset: const Offset(0, 18),
                              blurRadius: 18,
                              color: kBlack.withOpacity(0.1),
                            ),
                          ],
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            //we can use imaegs from the assets folder like this
                            // image: AssetImage('assets/house01.jpg'),
                            // or we can use it as network image, like this
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
                                height: 136,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(kBorderRadius20),
                                    bottomRight: Radius.circular(kBorderRadius20),
                                  ),
                                  gradient: kLinearGradientBlack,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: kPadding16,
                                  vertical: kPadding20,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              kBorderRadius20,
                                            ),
                                            color: kBlack.withOpacity(0.24),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: kPadding8,
                                            vertical: kPadding4,
                                          ),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/icon_pinpoint.svg',
                                              ),
                                              const SizedBox(
                                                width: kPadding4,
                                              ),
                                              Text(
                                                '4.5Km',
                                                style: kRalewayRegular.copyWith(
                                                  color: kWhite,
                                                  fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Modern House',
                                            style: kRalewayMedium.copyWith(
                                              color: kWhite,
                                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                            ),
                                        ),
                                        SizedBox(
                                          height: SizeConfig.blockSizeHorizontal! * 0.5,
                                        ),
                                        Text(
                                          'Dampe para, Meegoda',
                                            style: kRalewayRegular.copyWith(
                                              color: kWhite,
                                              fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                            ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),

                      ),
                    );
                  }
                ),
              ),
              const SizedBox(height: kPadding24,),
              Padding(
                padding: const EdgeInsets.symmetric(
                horizontal: kPadding20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best for you', 
                      style: kRalewayMedium.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                    Text(
                      'See more', 
                        style: kRalewayRegular.copyWith(
                          color: kGrey85,
                          fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kPadding24,),
              Padding(
                padding: const EdgeInsets.symmetric(
                horizontal: kPadding20,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 70,
                      margin: const EdgeInsets.only(
                        bottom: kPadding24,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                kBorderRadius10,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  offset: const Offset(0, 18),
                                  blurRadius: 18,
                                  color: kBlack.withOpacity(0.1),
                                ),
                              ],
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                //we can use imaegs from the assets folder like this
                                // image: AssetImage('assets/house01.jpg'),
                                // or we can use it as network image, like this
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 4.5
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Orchad House',
                                    style: kRalewayMedium.copyWith(
                                      color: kBlack,
                                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                    ),
                                  ),
                                  SizedBox(height: SizeConfig.blockSizeVertical! * 0.5,),
                                  Text(
                                    'Rs 12000 / month',
                                    style: kRalewayRegular.copyWith(
                                      color: kBlue,
                                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icon_bedroom.svg',
                                            ),
                                            SizedBox(
                                              width: SizeConfig.blockSizeHorizontal! * 0.5,
                                            ),
                                            Text(
                                              '6 Beadrooms',
                                              style: kRalewayRegular.copyWith(
                                                color: kGrey85,
                                                fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: SizeConfig.blockSizeHorizontal! * 1,
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icon_bathroom.svg',
                                            ),
                                            SizedBox(
                                              width: SizeConfig.blockSizeHorizontal! * 0.5,
                                            ),
                                            Text(
                                              '2 Bathrooms',
                                              style: kRalewayRegular.copyWith(
                                                color: kGrey85,
                                                fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
      )),
    );
  }
}