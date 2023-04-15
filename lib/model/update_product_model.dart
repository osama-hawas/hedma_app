class UpdateProductModel {
  final String id;
  final String title;
  final price;
  final String description;
  final String image;
  final String category;

  UpdateProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.category,
  });
  factory UpdateProductModel.fromJson(jsondata) {
    return UpdateProductModel(
      id: jsondata['id'],
      title: jsondata['title'],
      price: jsondata['price'],
      description: jsondata['description'],
      image: jsondata['image'],
      category: jsondata["category"],
    );
  }
}
