import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomHotelClass extends StatelessWidget {
  int index;
  CustomHotelClass({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 55,
        height: 55,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(3),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.amber,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Wrap(
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          children: List.generate(index, (index) => const CustomStarIcon()),
        ));
  }
}

//custom star icon
class CustomStarIcon extends StatelessWidget {
  const CustomStarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star,
      color: Colors.amber,
      size: 17,
    );
  }
}
