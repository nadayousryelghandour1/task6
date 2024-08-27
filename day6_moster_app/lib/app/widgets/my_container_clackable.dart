import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget myContainerClackable(String image) {
  return Container(
    width: 98,
    height: 48,
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xFF1F2022),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(48),
    ),
    child: IconButton(
      onPressed: (){}, 
      icon: SvgPicture.asset(
        image,
        width: 24,
      )
      ),
  );
}