// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shoot_food_ui/models/resturant_model_model.dart';
import 'package:shoot_food_ui/style/app_style.dart';

class ResturantCard extends StatelessWidget {
  ResturantCard(this.model, {Key? key}) : super(key: key);
  ResturantModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Container(
            height: 215,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
                image: DecorationImage(
                  image: AssetImage(model.bannerUrl!),
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            top: 165,
            right: 10,
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                  padding: const EdgeInsets.all(4.0),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.06),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: const Offset(0, 0))
                      ],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(16.0)),
                      image: DecorationImage(
                        image: AssetImage(model.logoUrl!),
                        fit: BoxFit.cover,
                      ))),
            ),
          ),
          Positioned(
            top: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    model.resturantName!,
                    style: AppStyle.mainTitleStyle,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    model.description!,
                    style: AppStyle.subTitleStyle,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "ارسال‌اکسپرس",
                        style: AppStyle.subTitleStyle,
                      ),
                      const SizedBox(width: 5),
                      Text("${model.deliveryPrice} تومان",
                          style: AppStyle.sectionSmallTitleStyle),
                      const SizedBox(width: 70),
                      Text(
                        "${model.deliveryTime}",
                        style: AppStyle.sectionSmallTitleStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
