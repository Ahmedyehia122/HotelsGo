import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgotask/components/custom_hotel_class.dart';
import 'package:hotelsgotask/components/rating_button.dart';
import 'package:hotelsgotask/consts.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  double _valslider = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leadingWidth: 100.w,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            //implementation (resrt data)
          },
          child: Center(
            child: Text(
              'Reset',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 21.sp,
                  decoration: TextDecoration.underline),
            ),
          ),
        ),
        title: Text(
          'Filters',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
          ),
        ),
        centerTitle: true,
        actions: [
          //close button to exit from this bottom sheet
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            height: double.infinity,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                //price range
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Text
                        Text(
                          'PRICE FOR NIGHT',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '540+' + ' \$',
                            style: TextStyle(
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    //slider for price range
                    Slider(
                      thumbColor: Colors.white,
                      value: _valslider,
                      onChanged: (value) {
                        setState(() {
                          _valslider = value;
                        });
                      },
                      min: 20,
                      max: 540,
                    ),
                    // min price + max price
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //min price
                          Text(
                            '\$' + '20',
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.grey[700],
                            ),
                          ),

                          //max price
                          Text(
                            '\$' + '540+',
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                //Rating
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //text
                      Text(
                        'RATING',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      //rating in numbers
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RatingButton(
                            color: Colors.red,
                            ratingScore: '0.0+',
                          ),
                          RatingButton(
                            color: Colors.blue,
                            ratingScore: '7.0+',
                          ),
                          RatingButton(
                            color: Colors.green,
                            ratingScore: '7.5+',
                          ),
                          RatingButton(
                            color: Colors.amber,
                            ratingScore: '8.0+',
                          ),
                          RatingButton(
                            color: Colors.greenAccent,
                            ratingScore: '8.5+',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //Hotel calss
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //text
                      Text(
                        'HOTEL CLASS',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),

                      //hotel class icon
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              5, (index) => CustomHotelClass(index: index + 1)),
                        ),
                      )
                    ],
                  ),
                ),
                //location
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Text
                      Text(
                        'DISTANCE FROM',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      //distance from location
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 60.h,
                        ),
                        child: Card(
                          child: ListTile(
                            title: Text(
                              'Location',
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.grey[700],
                              ),
                            ),
                            //location
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'City Centre',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.grey[700],
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                const Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          //show results button
          Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            height: 80.h,
            color: Colors.white,
            child: MaterialButton(
              color: Colors.blue,
              onPressed: () {
                //implementation (show results after filtering)
              },
              child: Text(
                'Show Results',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
