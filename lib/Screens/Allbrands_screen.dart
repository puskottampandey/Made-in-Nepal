import 'package:flutter/material.dart';
import 'package:madeinnepal/Screens/row_Iteam.dart';

class Allbrands extends StatefulWidget {
  const Allbrands({super.key});

  @override
  State<Allbrands> createState() => _AllbrandsState();
}

class _AllbrandsState extends State<Allbrands> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Brands"),
      ),
      body: Column(
        children: const [
          SizedBox(
            height: 175,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0.0),
              child: RowItems(),
            ),
          ),
        ],
      ),
    );
  }
}
