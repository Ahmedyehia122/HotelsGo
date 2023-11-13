import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  String name;

  CustomText({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //implementation
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 20.sp,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
