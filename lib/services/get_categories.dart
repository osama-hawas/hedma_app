import 'package:hedma_app/helpers/api_class.dart';
import 'package:hedma_app/model/product_model.dart';

class CategoriesServices {
  Future<List<ProductModel>> getcategories(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> productModel = [];
    for (int i = 0; i < data.length; i++) {
      productModel.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productModel;
  }
}
