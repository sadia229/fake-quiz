import 'package:dartz/dartz.dart';
import 'package:minimal_rest/minimal_rest.dart';
import '../../core/wrappers/rest_response.dart';
import '../entities/categories.dart';

abstract class CategoriesRepository {
  Future<Either<MinRestError, RestResponse<Category>>> getSuggestedCategories();
}
