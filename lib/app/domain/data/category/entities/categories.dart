
class Category {
  final int id;
  final String name;
  final String? description;
  final String? imageUrl;
  final int weight;
  final int progress;
  final int followersCount;
  bool isFollowing;
  final bool hasSubcategories;

  Category({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.weight,
    required this.progress,
    required this.followersCount,
    required this.isFollowing,
    required this.hasSubcategories,
  });
}