import 'package:flutter/material.dart';

import '../../model/CategoryModel.dart';

class CategoryWidget extends StatefulWidget {
   final CategoryModel category;

  CategoryWidget({required this.category});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(8.0),

      child: Column(
        children: [
          widget.category.image.isNotEmpty?
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                widget.category.image,
                width: 50,
                height: 50,
                fit: BoxFit.fill,
              ),
            ):Container(height: 50,width: 50,),

          SizedBox(height: 8.0),
          Text(widget.category.catName),
        ],
      ),
    );
  }
}
