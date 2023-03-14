import 'package:flutter/material.dart';
import 'package:madeinnepal/constant.dart';
import 'package:madeinnepal/list_of_brand/brand_screen.dart';

class RowItems extends StatefulWidget {
  const RowItems({super.key});

  @override
  State<RowItems> createState() => _RowItemsState();
}

class _RowItemsState extends State<RowItems> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: image.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Brand(image: image),
              ),
            );
          },
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
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.network(image[index])
              ],
            ),
          ),
        );
      },
    );
  }
}
