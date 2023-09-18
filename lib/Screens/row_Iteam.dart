import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:madeinnepal/brandproduct/brand_screen.dart';

import 'package:madeinnepal/model_screen/brand.dart';

class RowItems extends StatefulWidget {
  const RowItems({super.key});

  @override
  State<RowItems> createState() => _RowItemsState();
}

class _RowItemsState extends State<RowItems> {
  bool isloading = true;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: brand.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Brands(brand: brand[index])));
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
                  const SizedBox(),
                  ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(8),
                    child: Image.network(
                      brand[index].imageurl.toString(),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}
