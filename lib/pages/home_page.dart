import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgotask/components/custom_icon.dart';
import 'package:hotelsgotask/components/hotel_tile.dart';
import 'package:hotelsgotask/consts.dart';
import 'package:hotelsgotask/models/hotel_mode.dart';
import 'package:hotelsgotask/models/hotels_api.dart';
import 'package:hotelsgotask/pages/filter_bottom_sheet.dart';
import 'package:hotelsgotask/pages/sort_bottom_sheet.dart';
 
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //create an object from HotelApi class
  HotelApi hotelApi = HotelApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            //List of hotels
            Padding(
                padding: EdgeInsets.only(
                  top: 80.h,
                  left: 10.w,
                  right: 10.w,
                  bottom: 10.h,
                ),
                child: FutureBuilder<List<dynamic>>(
                  future: hotelApi.getHotels(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      // If the API call was successful, build the ListView
                      return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index) {
                          final hotelData = snapshot.data?[index];
                          final hotel = HotelModel.fromJson(hotelData);
                          return HotelTile(
                            imagePath: hotel.image,
                            review: hotel.review,
                            address: hotel.adress,
                            hotelName: hotel.name,
                            price: hotel.price,
                            reviewScore: hotel.reviewScore,
                            stars: hotel.stars,
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      // If the API call was unsuccessful, display an error message
                      return Center(
                        child: Text('${snapshot.error}'),
                      );
                    }

                    // If the data is still being loaded, show a loading indicator
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                )),
            //filter + sort button
            Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //filter button
                  CustomIcon(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => const FilterBottomSheet(),
                      );
                    },
                    name: 'Fliter',
                    icon: const Icon(Icons.filter_list),
                  ),

                  //sort button
                  CustomIcon(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => const SortBottomSheet(),
                      );
                    },
                    name: 'Sort',
                    icon: const Icon(Icons.format_list_bulleted),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
