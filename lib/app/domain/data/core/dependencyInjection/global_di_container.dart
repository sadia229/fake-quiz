import 'package:ecommerce/app/domain/data/products/repositories/products_repository.dart';
import 'package:ecommerce/app/infrastructure/repositories/products_min_rest_repository.dart';
import 'package:get/get.dart';
import '../../../../modules/home/controllers/home_controller.dart';

class DependencyInjectionContainer {
  static Future<void> init() async {
    Get.lazyPut<CategoriesRepository>(
      () => CategoriesMinRestRepository(),
      fenix: true,
    );

    Get.lazyPut<HomeController>(() => HomeController(Get.find()), fenix: true);
  }
}
