import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgotask/components/star_icon.dart';

// ignore: must_be_immutable
class HotelTile extends StatelessWidget {
  final String imagePath;
  final String hotelName;
  final String review;
  final int price;
  final int stars;
  final String address;
  final dynamic reviewScore;

  const HotelTile({
    super.key,
    required this.imagePath,
    required this.hotelName,
    required this.review,
    required this.price,
    required this.address,
    required this.reviewScore,
    required this.stars,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 15.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image + favourite button
              Stack(
                alignment: Alignment.topRight,
                children: [
                  //image
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                    ),
                    child: Image.network(
                      imagePath,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 120.h,
                    ),
                  ),

                  //favourite button
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff485F87),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        onPressed: () {
                          //implementation
                        },
                        icon: const Icon(Icons.favorite_outline),
                        iconSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              //rating with stars + text
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 5.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        stars,
                        (index) => const StarIcon(),
                      ),
                    ),
                    //text
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        'Hotel',
                        style: TextStyle(
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //hotel name
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 5.h,
                ),
                child: Text(
                  hotelName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23.sp,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              // review score +  address
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 5.h,
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // review score
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 5.h,
                      ),
                      margin: EdgeInsets.only(right: 4.w),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 31, 107, 33),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        reviewScore.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    // review
                    Text(
                      review,
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),

                    // adress +location icon

                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 15,
                          color: Colors.grey[800],
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        // adress
                        Text(
                          address,
                          style: TextStyle(
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //lowest price + deal
              Container(
                padding: const EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 5.h,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //text
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: const Color(0xffBAE1EC),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'our lowest price',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        //price
                        Text(
                          '\$' + price.toString(),
                          style: TextStyle(
                            color: const Color.fromARGB(255, 31, 107, 33),
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //text
                        const Text('Renaissance')
                      ],
                    ),

                    //deal
                    GestureDetector(
                      onTap: () {
                        //implementation (you can show the Deal, book a hotel and pay fpor it )
                      },
                      child: Row(
                        children: [
                          //text
                          Text(
                            'View Deal',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23.sp,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          //icon
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 30,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          //more prices
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
              vertical: 10.h,
            ),
            child: GestureDetector(
              onTap: () {
                //implementation (navigate to another screen that showing more prices)
              },
              child: Text(
                'More Prices',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
