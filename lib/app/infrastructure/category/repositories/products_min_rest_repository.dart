import 'package:ecommerce/app/domain/data/core/wrappers/rest_response.dart';
import 'package:ecommerce/app/domain/data/products/entities/categories.dart';
import 'package:minimal_rest/minimal_rest.dart';
import 'package:dartz/dartz.dart';

import '../../domain/data/products/repositories/products_repository.dart';
import '../models/catogories_model.dart';

class CategoriesMinRestRepository implements CategoriesRepository {
  @override
  Future<Either<MinRestError, RestResponse<Category>>>
      getSuggestedCategories() {
    return MinRest().getErrorOr(
      "/suggested-categories",
      (json) => RestResponse<Category>.fromJson(json, CategoryModel.fromJson),
      token: "21440|tuAqctgT68GECoxJQbYwUdvsYnP7aJ2cgGa2pQIs",
    );
  }
}
