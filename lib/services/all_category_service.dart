import 'package:hedma_app/helpers/api_class.dart';

class AllCategoryServices {
  Future<List<dynamic>> getallcategory() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
