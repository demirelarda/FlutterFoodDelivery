import 'package:food_delivery/controllers/cart_controller.dart';
import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/data/repository/cart_repo.dart';
import 'package:food_delivery/data/repository/popular_procuct_repo.dart';
import 'package:get/get.dart';
import '../controllers/recommended_product_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/recommended_product_repo.dart';
import '../utils/app_constants.dart';

Future<void> init() async {

  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl:AppConstants.BASE_URL)); //base url istiyor, bunu veriyoruz ve ApiClient objesinin bir örneğini yaratmış oluyoruz.

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient:Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient:Get.find())); //RecommendedProducrRepo ApiClient objesi istiyor bundan dolayı depndency injection yapmamız lazım . ApiClient'ı lazy ile bulunmasını sağlayıp inject ediyoruz.
  Get.lazyPut(()=> CartRepo()); //bu CartRepo herhangi bir parametre istemiyor.

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));

}