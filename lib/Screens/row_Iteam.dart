import 'package:flutter/material.dart';
import 'package:madeinnepal/constant.dart';

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
      itemCount: 5,
      itemBuilder: (BuildContext context, itemCount) {
        return Container(
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
              Image.network(
                goldstariamge,
                fit: BoxFit.cover,
              )
            ],
          ),
        );
      },
    );
  }
}
