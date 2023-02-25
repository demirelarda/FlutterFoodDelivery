import 'package:food_delivery/models/products_model.dart';
import 'package:get/get.dart';

import '../data/repository/cart_repo.dart';
import '../models/cart_model.dart';

class CartController extends GetxController{
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> _items={};

  void addItem(ProductModel product, int quantity){
    _items.putIfAbsent(product.id!, () => CartModel(
      id:product.id,
      name:product.name,
      price:product.price,
      img:product.img,
      quantity:quantity, //bu fonksiyonda(addItem) parametre olarak aldığımız değişken quantity'i buraya veriyoruz.
      isExist:true,
      time:DateTime.now().toString(),
    ));
  }


}