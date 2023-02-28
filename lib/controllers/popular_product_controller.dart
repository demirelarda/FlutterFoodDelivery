import 'package:flutter/material.dart';
import 'package:food_delivery/data/repository/popular_procuct_repo.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:get/get.dart';

import '../models/products_model.dart';
import 'cart_controller.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList=[];
  List<dynamic> get popularProductList => _popularProductList;
  late CartController _cart;

  bool _isLoaded = false;
  bool get isLoaded=>_isLoaded;

  int _quantity=0;
  int get quantity=>_quantity;
  int _inCartItems=0;
  int get inCartItems=>_inCartItems+_quantity;

  Future<void>getPopularProductList()async {
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode==200){ //call successful
      print("got products");
      _popularProductList=[];
      _popularProductList.addAll(Product.fromJson(response.body).products as Iterable);
      //print(_popularProductList);
      _isLoaded = true;
      update();

    }else{

    }
  }

  void setQuantity(bool isIncrement){
    if(isIncrement){
      _quantity = checkQuantity(_quantity+1);
    }
    else{
      _quantity =checkQuantity(_quantity-1);
    }
    update(); //update UI
  }

  int checkQuantity(int quantity){
    if((_inCartItems+quantity)<0){
      Get.snackbar("Item Count", "You can't reduce more!",
      backgroundColor: AppColors.mainColor,
      colorText: Colors.white);
      return 0;
    }
    else if((_inCartItems+quantity)>20){ //maximum quantity
      Get.snackbar("Item Count", "You can't add more!",
          backgroundColor: AppColors.mainColor,
          colorText: Colors.white
      );
      return 20;
    }
    else{
      return quantity;
    }
  }

  void initQuantity(ProductModel product,CartController cart){
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    var exist = false;
    exist = _cart.existInCart(product);
    print("exist = "+exist.toString());
    if(exist){
      _inCartItems=_cart.getQuantity(product);
      print(_inCartItems);
    }
  }

  void addItem(ProductModel product){
    print("quantity = "+quantity.toString());
    //if(quantity>0){
      _cart.addItem(product, _quantity);
      _quantity = 0;
      _inCartItems=_cart.getQuantity(product);
      _cart.items.forEach((key, value) {
        print("The id is "+value.id.toString()+" The quantity is "+value.quantity.toString());
      });
      /*
    }else{
      Get.snackbar("Item Count", "You should at least add 1 item in the cart!",
          backgroundColor: AppColors.mainColor,
          colorText: Colors.white);
    }


       */

  }

}