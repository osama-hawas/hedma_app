import '../helpers/api_class.dart';
import '../model/product_model.dart';
import '../model/update_product_model.dart';

class UpdateProductService {
  Future<UpdateProductModel> updateProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category,
      required String id}) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
      },
    );
    return UpdateProductModel.fromJson(data);
  }
}
