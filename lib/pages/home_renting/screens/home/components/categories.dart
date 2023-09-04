// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../data/data.dart';
import '../../../constants/constants.dart';



class Categories extends StatefulWidget {
  // const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  int selectedCategoryIndex = 0;

  Widget _buildCategory(BuildContext context, int index){
    // Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: (){
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: appPadding / 3),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: appPadding / 2),
          decoration: BoxDecoration(
            color: selectedCategoryIndex == index 
              ? darkBlue 
              : black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              categoryList[index],
              style: TextStyle(
                color: selectedCategoryIndex == index 
                  ? white 
                  : black,
              ),
            ),
          ),
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding, 
        top: appPadding/2, 
        bottom: appPadding
      ),
      child: Container(
        height: size.height * 0.05,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return _buildCategory(context, index);
          },

        )
      ),
    );
  }
}