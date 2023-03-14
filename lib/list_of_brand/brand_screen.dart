import 'package:flutter/material.dart';

class Brand extends StatefulWidget {
  const Brand({super.key, required List<String> image});

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Brands"),
      ),
    );
  }
}
