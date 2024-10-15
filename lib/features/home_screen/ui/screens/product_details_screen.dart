import 'package:diva_e_commerce_app/features/home_screen/data/models/category_products_response_model.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel productModel;
  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('${productModel.title}'),
      ),
    );
  }
}
