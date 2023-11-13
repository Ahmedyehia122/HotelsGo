import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgotask/components/custom_text.dart';
import 'package:hotelsgotask/consts.dart';

class SortBottomSheet extends StatelessWidget {
  const SortBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Sort by',
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
              ))
        ],
      ),
      //sort
      body: Padding(
        padding: EdgeInsets.only(
          left: 30.w,
          top: 20.h,
        ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomText(
                  name: 'Our recomendation',
                ),
                CustomText(
                  name: 'Rating & Recomended',
                ),
                CustomText(
                  name: 'Price & Recomended',
                ),
                CustomText(
                  name: 'Distance & Recomended',
                ),
                CustomText(
                  name: 'Rating only',
                ),
                CustomText(
                  name: 'Price only',
                ),
                CustomText(
                  name: 'Distance only',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
