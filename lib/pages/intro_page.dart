import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgotask/components/custom_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //intro text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hotels',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 70.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Go',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 70.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                //heading
                Text(
                  'افضل الفنادق حول العالم',
                  style: TextStyle(
                    color: Colors.blue[300],
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                //get started button
                GetStartedButton(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('homepage');
                  },
                  text: 'دخول',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
