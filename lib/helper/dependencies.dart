import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/data/repositories/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init()async{
  //api_client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.dbestech.com"));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}