import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detail.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RouteHelper{
  static const String initial="/";
  static const String popularFood="/popular-food";
  static const String recommendedFood="/recommended-food";

  static String getInitial()=>"$initial";
  static String getPopularFood()=>"$popularFood";
  static String getRecommendedFood()=>"$recommendedFood";


  static List<GetPage> routes=[
    GetPage(name: initial, page: ()=>MainFoodPage()),

    GetPage(name: popularFood,
        transition: Transition.fadeIn,
        page:()=>PopularFoodDetail()),

    GetPage(name: recommendedFood,
        transition: Transition.fadeIn,
        page:()=>RecommendedFoodDetail()),

  ];

}