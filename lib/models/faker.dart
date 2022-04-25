import 'package:flutter/cupertino.dart';
import 'package:shoot_food_ui/models/food_categoriy_model.dart';
import 'package:shoot_food_ui/models/section_model.dart';

import 'resturant_model_model.dart';

class Faker {
  static List<SectionModel> sections = [
    SectionModel("سوپر مارکت", const Color.fromARGB(255, 161, 125, 7),
        "assets/images/section/supermarket_sc.png"),
    SectionModel("رستوران", const Color.fromARGB(255, 189, 226, 110),
        "assets/images/section/resturant_sc.png"),
    SectionModel("آجیل", const Color.fromARGB(255, 166, 231, 25),
        "assets/images/section/ajil_sc.png"),
    SectionModel("بستنی", const Color.fromARGB(255, 110, 226, 210),
        "assets/images/section/bastani_sc.png"),
    SectionModel("کافه", const Color.fromARGB(255, 110, 226, 191),
        "assets/images/section/coffe_sc.png"),
    SectionModel("میوه", const Color.fromARGB(255, 127, 180, 12),
        "assets/images/section/mive_sc.png"),
    SectionModel("نانوایی", const Color.fromARGB(255, 110, 226, 216),
        "assets/images/section/nanvayi_sc.png"),
    SectionModel("پروتئین", const Color.fromARGB(255, 32, 0, 121),
        "assets/images/section/gosht_sc.png"),
    SectionModel("شیرینی", const Color.fromARGB(255, 185, 224, 101),
        "assets/images/section/shirini_sc.png"),
  ];
  static List<FoodCategoryModel> categories = [
    FoodCategoryModel("ایرانی", "assets/images/category/irani_cat.jpg"),
    FoodCategoryModel("فست فود", "assets/images/category/fastfood_cat.jpg"),
    FoodCategoryModel("کباب", "assets/images/category/kabab_cat.jpg"),
    FoodCategoryModel("پیتزا", "assets/images/category/pizza_cat.jpg"),
    FoodCategoryModel("برگر", "assets/images/category/burger_cat.jpg"),
    FoodCategoryModel("ساندویچ", "assets/images/category/sandwich_cat.jpg"),
    FoodCategoryModel("سوخاری", "assets/images/category/sokhari_cat.jpg"),
  ];
  static List<ResturantModel> resturants = [
    ResturantModel(
        "کافه کاکا",
        "assets/images/resturant/resturant_banner_1.png",
        "assets/images/resturant/resturant_logo_1.jpg",
        "25000",
        "60 دقیقه",
        "صبحانه و میان وعده",
        "4.8"),
    ResturantModel(
        "رستوران منفی یک",
        "assets/images/resturant/resturant_banner_1.png",
        "assets/images/resturant/resturant_logo_1.jpg",
        "15000",
        "45 دقیقه",
        "ایرانی کباب و جوجه",
        "4.7"),
    ResturantModel(
        "رستوران خان",
        "assets/images/resturant/resturant_banner_1.png",
        "assets/images/resturant/resturant_logo_1.jpg",
        "رایگان",
        "30 دقیقه",
        "ایرانی کباب و جوجه",
        "4.9"),
    ResturantModel(
        "رستوران جلفا",
        "assets/images/resturant/resturant_banner_1.png",
        "assets/images/resturant/resturant_logo_1.jpg",
        "رایگان",
        "45 دقیقه",
        "ایرانی کباب و جوجه",
        "4.5"),
    ResturantModel(
        "کافه زی",
        "assets/images/resturant/resturant_banner_1.png",
        "assets/images/resturant/resturant_logo_1.jpg",
        "12000",
        "30 دقیقه",
        "صبحانه نوشیدنی و میان وعده",
        "4.6"),
  ];
}
