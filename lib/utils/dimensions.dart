import 'package:get/get.dart';
class Dimensions{

  /*Ekran boyutuna göre widgetların da boyutu belli oranlarda değişecek.
  App'i belli bir telefonda(örneğin Pixel 3) tasarladık.
  Telefonun uzunluğunu print ettirip 844 olduğunu gördük.
  Bizim kullandığımız widgetin uzunluğunu 220 ise bunu oranlarsak 844/220=3.84
  Buna göre kullanılan device'ın uzunluğu alındığında bunu bu orana bölerek
  widget uzunluğumuzu dinamik olarak çizdirebiliriz.
   */

  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView= screenHeight/2.64;
  static double pageViewContainer= screenHeight/3.84;
  static double pageViewTextContainer= screenHeight/7.03;

  //dynamic height padding and margin
  static double height10 = screenHeight/84.4;
  static double height15 = screenHeight/56.27;
  static double height20 = screenHeight/42.2;
  static double height30 = screenHeight/28.13;
  static double height45 = screenHeight/18.75;

  //dynamic width padding and margin
  static double width5 = screenHeight/168.8;
  static double width10 = screenHeight/84.4;
  static double width15 = screenHeight/56.27;
  static double width20 = screenHeight/42.2;
  static double width30 = screenHeight/28.13;
  static double width45 = screenHeight/18.75;

  //dynamic font
  static double font16 = screenHeight/52.75;
  static double font20 = screenHeight/42.2;
  static double font26 = screenHeight/32.46;

  //dynamic radius
  static double radius15 = screenHeight/56.27;
  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;

  //dynamic icon size
  static double iconSize24 = screenHeight/35.17;
  static double iconSize16 = screenHeight/52.75;

  //list view size
  static double listViewImgSize = screenWidth/3.25;
  static double listViewTextContainerSize = screenWidth/3.9;

  //popular food
  static double popularFoodImgSize = screenHeight/2.41;

  //bottom height
  static double bottomHeightBar = screenHeight/7.03;




}