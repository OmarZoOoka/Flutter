import 'package:store_app/helper/api.dart';

class CategoryService {
  Future<List<dynamic>> getCategoryProducts() async {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
