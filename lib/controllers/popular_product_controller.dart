import 'package:food_delivery/data/repository/popular_procuct_repo.dart';
import 'package:get/get.dart';

import '../models/products_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList=[];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void>getPopularProductList()async {
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode==200){ //call successful
      print("got products");
      _popularProductList=[];
      _popularProductList.addAll(Product.fromJson(response.body).products as Iterable);
      //print(_popularProductList);
      update();

    }else{

    }
  }
}