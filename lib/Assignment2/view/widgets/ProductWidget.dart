import 'package:flutter/material.dart';
import '../../model/ProductModel.dart';

class ProductWidget extends StatefulWidget {
  ProductModel product;

  ProductWidget({required this.product});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.network(
              widget.product.proImage,
              fit: BoxFit.fitHeight,
            ),
          ),
          ListTile(
            title: Text(widget.product.proName),
            subtitle: Text('\$${widget.product.proPrice.toStringAsFixed(2)}'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.product.proDescription,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          ElevatedButton(
            onPressed: () {
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
