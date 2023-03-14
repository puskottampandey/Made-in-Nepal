import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:madeinnepal/constant.dart';
import 'package:madeinnepal/list_of_brand/brand_screen.dart';
import 'package:madeinnepal/model_screen/brand.dart';

class RowItems extends StatefulWidget {
  const RowItems({super.key});

  @override
  State<RowItems> createState() => _RowItemsState();
}

class _RowItemsState extends State<RowItems> {
  @override
  void initState() {
    super.initState();
    loadString();
  }

  loadString() async {
    var data = await rootBundle.loadString("assets/data.json");
    var decodedata = jsonDecode(data);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: brand.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            width: 150,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 0.0,
                  blurRadius: 2,
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Column(
              children: const [
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
