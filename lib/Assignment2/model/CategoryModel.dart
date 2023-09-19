import 'ProductModel.dart';

class CategoryModel {
  int id;
  String catName,image;
  List<ProductModel> productList;

  CategoryModel(this.id, this.catName ,this.image, this.productList);
}
