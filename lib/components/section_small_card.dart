// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shoot_food_ui/style/app_style.dart';

import '../models/section_model.dart';

class SectionSmallCard extends StatelessWidget {
  SectionSmallCard(this.model, {Key? key}) : super(key: key);
  SectionModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 6),
      child: Column(children: [
        Container(
          width: 80,
          height: 80,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: model.bgColor,
          ),
          child: Column(
            children: [
              Image.asset(
                model.imgUrl,
                height: 56,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          model.title!,
          style: AppStyle.sectionSmallTitleStyle,
        ),
      ]),
    );
  }
}
