import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {required String title,
      required num price,
      required String desc,
      required String image,
      required String categroy}) async {
    // ignore: missing_required_param
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': categroy,
      },
    );
    return ProductModel.fromJson(data);
  }
}
