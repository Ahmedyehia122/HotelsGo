import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class RatingButton extends StatelessWidget {
  Color color;
  String ratingScore;
  RatingButton({
    super.key,
    required this.color,
    required this.ratingScore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        ratingScore,
        style: TextStyle(
          color: Colors.white,
          fontSize: 13.sp,
        ),
      ),
    );
  }
}
