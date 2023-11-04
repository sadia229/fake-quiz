import 'package:ecommerce/app/domain/data/products/entities/categories.dart';
import 'package:ecommerce/app/domain/data/products/repositories/products_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final CategoriesRepository _categoriesRepository;

  HomeController(this._categoriesRepository);

  @override
  void onInit() {
    _fetchCategories();
    super.onInit();
  }

  final _categories = <Category>[].obs;

  List<Category> get categories => _categories;

  final _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  Future<void> _fetchCategories() async {
    _isLoading.value = true;
    (await _categoriesRepository.getSuggestedCategories()).fold(
      (error) => print(error),
      (response) => _categories.value = response.data,
    );
    _isLoading.value = false;
  }
}
