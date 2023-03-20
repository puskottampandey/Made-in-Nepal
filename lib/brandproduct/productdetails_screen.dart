import 'package:flutter/material.dart';
import 'package:madeinnepal/model_screen/brand.dart';

class ProductDetails extends StatefulWidget {
  final Product products;
  const ProductDetails({super.key, required this.products});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.width,
            child: Image.network(
              widget.products.imageurl.toString(),
              fit: BoxFit.cover,
            ),
          ),
        ],
      )),
    );
  }
}
