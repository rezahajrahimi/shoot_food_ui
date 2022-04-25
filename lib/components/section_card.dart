// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shoot_food_ui/style/app_style.dart';

import '../models/section_model.dart';

class SectionCard extends StatelessWidget {
  SectionCard(this.model, {Key? key}) : super(key: key);
  SectionModel model;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: model.bgColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image(
                height: 120,
                image: AssetImage(model.imgUrl),
                alignment: Alignment.topLeft,
                fit: BoxFit.fill,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(right: 8, top: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title!,
                      style: AppStyle.sectionTitleStyle,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
