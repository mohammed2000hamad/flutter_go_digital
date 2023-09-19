import 'package:flutter/material.dart';


import '../../CategoriesData.dart';
import '../../model/CategoryModel.dart';
import '../../model/ProductModel.dart';
import '../widgets/CategorieWidget.dart';
import '../widgets/ProductWidget.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  CategoryModel? selectedCategory;

  @override
  void initState() {
    super.initState();

    List<ProductModel> allProduct = Categories.expand((cat) => cat.productList).toList();
    allCategory = CategoryModel(
      0,
      "All",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Republic_Of_Korea_Broadcasting-TV_Rating_System%28ALL%29.svg/250px-Republic_Of_Korea_Broadcasting-TV_Rating_System%28ALL%29.svg.png",
      allProduct,
    );

    selectedCategory = allCategory;
  }

  late CategoryModel allCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://i.dawn.com/primary/2021/05/60a7680bee726.png",
            height: 200,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Categories",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 4),
            padding: EdgeInsets.only(top: 8),
            height: 100.0,
            color: Color(0x3AB9B9B9),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Categories.length + 1,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (index == 0) {

                        selectedCategory = allCategory;
                      } else {
                        selectedCategory = Categories[index - 1];
                      }
                    });
                  },
                  child: index == 0
                      ? CategoryWidget(category: allCategory)
                      : CategoryWidget(category: Categories[index - 1]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Product",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: (1 / 1.44),
              children: selectedCategory != null
                  ? List.generate(
                selectedCategory!.productList.length,
                    (index) {
                  return Container(
                    child: ProductWidget(
                      product: selectedCategory!.productList[index],
                    ),
                  );
                },
              )
                  : List.generate(
                allCategory.productList.length,
                    (index) {
                  final product = allCategory.productList[index];
                  return Container(
                    child: ProductWidget(
                      product: product,
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
