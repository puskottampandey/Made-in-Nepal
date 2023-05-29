import 'package:flutter/material.dart';
import 'package:madeinnepal/constant.dart';

class Cart extends StatefulWidget {
  const Cart({
    super.key,
  });

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kcolor,
        title: const Text("Cart"),
      ),
      body: ListView(
        children: const [Cart()],
      ),
    );
  }
}
