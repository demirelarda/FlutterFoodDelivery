import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/data/repository/popular_procuct_repo.dart';
import 'package:get/get.dart';
import '../data/api/api_client.dart';
import '../utils/app_constants.dart';

Future<void> init() async {

  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl:AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));




}