class ProductModel {
  final  id;
  final String title;
  final price;
  final String description;
  final String image;
  final String category;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
    required this.category,
  });
  factory ProductModel.fromJson(jsondata) {
    return ProductModel(
      id: jsondata['id'],
      title: jsondata['title'],
      price: jsondata['price'],
      description: jsondata['description'],
      image: jsondata['image'],
      rating: RatingModel.fromJson(jsondata['rating']),
      category: jsondata["category"],
    );
  }
}

class RatingModel {
  final  rating;
  final  count;

  RatingModel({
    required this.rating,
    required this.count,
  });
  factory RatingModel.fromJson(jsondata) {
    return RatingModel(
      rating: jsondata['rate'],
      count: jsondata['count'],
    );
  }
}
