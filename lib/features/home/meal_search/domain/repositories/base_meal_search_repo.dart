import 'package:dartz/dartz.dart';
import 'package:wagba/core/failures/base_failure.dart';
import 'package:wagba/features/home/meal_search/domain/entities/meal.dart';
import 'package:wagba/features/home/meal_categories/domain/entities/meal_in_category_or_kitchen.dart';

abstract class BaseMealSearchRepo{

  const BaseMealSearchRepo();

  Future<Either<Failure, List<Meal>>> searchMealByName({required String mealName});

  Future<Either<Failure, List<MealInCategory>>> searchMealContainingIngredient({required String ingredient});

  Future<Either<Failure, Meal>> searchMealById({required String mealId});

  Future<Either<Failure, Meal>> getRandomMeal();

}