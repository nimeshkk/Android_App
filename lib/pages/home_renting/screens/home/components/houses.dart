// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../../model/house.dart';
import '../../details/details_screen.dart';
import '../../../data/data.dart';






class Houses extends StatefulWidget {
  // const Houses({super.key});

  @override

  //State<Houses> change to _HousesState


  State<Houses> createState() => _HousesState();
}

class _HousesState extends State<Houses> {

  Widget _buildHouse(BuildContext context, int index){
    Size size = MediaQuery.of(context).size;
    House house = houseList[index];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (_) => DetailsScreen(key: UniqueKey(), house: house),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: appPadding,
          vertical: appPadding / 2,
        ),
        child: Container(
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      height: 180,
                      width: size.width,
                      fit: BoxFit.cover,
                      image: AssetImage(house.imageUrl),
                      ),
                  ),
                  Positioned(
                    right: appPadding / 2,
                    top: appPadding / 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        icon: house.isFav ?
                        const Icon(
                          Icons.favorite_rounded,
                          color: red,
                        ) : 
                        const Icon(
                          Icons.favorite_border_rounded,
                          color: black,
                        ),
                        onPressed: (){
                          setState(() {
                            house.isFav = !house.isFav;
                          });
                        },
                        ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    '\$${house.price.toStringAsFixed(3)}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      house.address,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        color: black.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '${house.bedRooms} bedrooms / ',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '${house.bathRooms} bathrooms / ',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '${house.sqFeet} sqft',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );

  } 

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: houseList.length,
        itemBuilder: (context, index){
          return _buildHouse(context, index);
        },
      ),
    );
  }
}
