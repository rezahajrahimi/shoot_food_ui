// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shoot_food_ui/style/app_style.dart';

import '../models/food_categoriy_model.dart';

class FoodCategoryCard extends StatelessWidget {
  FoodCategoryCard(this.model, {Key? key}) : super(key: key);
  FoodCategoryModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 6),
      child: Column(children: [
        Container(
          width: 110,
          height: 110,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(model.imgUrl!), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                model.catName!,
                style: AppStyle.sectionFoodCategoryTitleStyle,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
