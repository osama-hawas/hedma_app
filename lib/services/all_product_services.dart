import 'dart:convert';

import 'package:hedma_app/helpers/api_class.dart';
import 'package:hedma_app/model/product_model.dart';

class AllProductServices {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    List<ProductModel> productModel = [];
    for (int i = 0; i < data.length; i++) {
      productModel.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productModel;
  }
}
