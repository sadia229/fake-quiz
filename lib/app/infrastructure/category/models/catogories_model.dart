import '../../domain/data/products/entities/categories.dart';

class CategoryModel extends Category {
  CategoryModel({
    required super.id,
    required super.name,
    required super.description,
    required super.imageUrl,
    required super.weight,
    required super.progress,
    required super.followersCount,
    required super.isFollowing,
    required super.hasSubcategories,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      description: json.containsKey('description') ? json['description'] : null,
      imageUrl: json['image_url'],
      weight: json['weight'],
      progress: json['progress'],
      followersCount: json['follower_count'],
      isFollowing: json['following'],
      hasSubcategories: json['has_subcategory'],
    );
  }
}
