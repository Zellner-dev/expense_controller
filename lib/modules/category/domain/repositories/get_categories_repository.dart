import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:your_wish_list/modules/category/domain/errors/app_exception.dart';

abstract class GetCategoryRepository {
  Future<Either<AppException, List<Category>>> getCategories(); 
}