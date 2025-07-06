import 'package:epic_everyday/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  final bool? isFav;
  final Function() ontap;
  const Favourite({super.key, required this.isFav, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: (isFav!)? Icon(Icons.favorite_border,size: 25,) : Icon(Icons.favorite,size: 25,color: AppColors.primaryColor,),
    );
  }
}
