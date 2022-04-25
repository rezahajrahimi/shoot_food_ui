import 'package:flutter/material.dart';
import 'package:shoot_food_ui/components/resturant_card.dart';
import 'package:shoot_food_ui/components/food_category_card.dart';
import 'package:shoot_food_ui/models/faker.dart';
import 'package:shoot_food_ui/style/app_style.dart';

import 'components/section_card.dart';
import 'components/section_small_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  color: AppStyle.primaryColor,
                  onPressed: () {},
                ),
                Column(
                  children: [
                    Text(
                      "خانه",
                      style: AppStyle.appBarTitleStyle,
                    ),
                    Text(
                      "اصفهان، چهارباغ بالا",
                      style: AppStyle.appBarLocationStyle,
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_cart_outlined),
                  color: AppStyle.primaryColor,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppStyle.searchBarColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: TextField(
                          style: AppStyle.appBarLocationStyle,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "جستجو در شوت‌فود",
                          ),
                        ),
                      ),
                      const Icon(Icons.search)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 2 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 2,
                  itemBuilder: (BuildContext context, index) {
                    return SectionCard(Faker.sections[index]);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                height: 110,
                child: ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: Faker.sections.length - 2,
                    itemBuilder: (BuildContext context, index) {
                      return SectionSmallCard(Faker.sections[index + 2]);
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text(
                "دسته‌بندی‌ها",
                style: AppStyle.mainTitleStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                height: 110,
                child: ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: Faker.categories.length,
                    itemBuilder: (BuildContext context, index) {
                      return FoodCategoryCard(Faker.categories[index]);
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/banner/banner_1.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "تازه‌ها در شوت‌فود",
                    style: AppStyle.mainTitleStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        "بیشتر",
                        style: AppStyle.subTitleStyle,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppStyle.secendColor,
                        size: 14,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 380,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Faker.resturants.length,
                    itemBuilder: (BuildContext context, index) {
                      return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, bottom: 8, right: 8),
                            child: ResturantCard(Faker.resturants[index]),
                          ));
                    }),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
