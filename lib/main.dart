import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgotask/pages/home_page.dart';
import 'package:hotelsgotask/pages/intro_page.dart';

void main() {
  runApp(const HotelsGo());
}

class HotelsGo extends StatelessWidget {
  const HotelsGo({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const IntroPage(),
          //routes if we have many screens
          routes: {
            'homepage': (context) => const HomePage(),
          },
        );
      },
    );
  }
}
