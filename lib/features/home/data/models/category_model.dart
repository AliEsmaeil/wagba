import 'package:json_annotation/json_annotation.dart';
import 'package:wagba/features/home/domain/entities/category.dart';

part 'generated/category_model.g.dart';

@JsonSerializable()
final class CategoryModel extends MealsCategory{

  const CategoryModel(super.id, super.name, super.imageUrl, super.description);

  factory CategoryModel.fromJson(Map<String,dynamic> json)=>_$CategoryModelFromJson(json);

  Map<String,dynamic> toJson()=>_$CategoryModelToJson(this);
}