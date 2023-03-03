import 'package:food_delivery/models/products_model.dart';

class CartModel {
  int? id;
  String? name;
  int? price;
  String? img;
  int? quantity;
  bool? isExist;
  String? time;
  ProductModel? product; //Modelimize ProductModel ekledik. Çünkü cart sayfasında ürün sayısı arttırıp azaltamıyorduk.


  CartModel(
      {this.id,
        this.name,
        this.price,
        this.img,
        this.quantity,
        this.isExist,
        this.time,
        this.product,
      });

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    img = json['img'];
    quantity = json['quantity'];
    isExist = json['isExist'];
    time = json['time'];
    product = ProductModel.fromJson(json['product']); //json içine model kaydedilecekse bu şekilde diğer modelin fromJson fonksiyonuna ulaşılıp parametre olarak böyle bir json veriyoruz.
  }


}