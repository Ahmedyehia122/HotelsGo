import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomIcon extends StatelessWidget {
  final String? name;
  final Icon icon;
  void Function()? onTap;

  CustomIcon({
    Key? key,
    required this.name,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          // icon
          Icon(
            icon.icon,
            color: Colors.blue,
            size: 30,
          ),
          SizedBox(
            width: 5.w,
          ),
          //text
          Text(
            name!,
            style: TextStyle(
              fontSize: 25.sp,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
