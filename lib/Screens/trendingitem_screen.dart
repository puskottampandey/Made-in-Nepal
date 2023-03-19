import 'package:flutter/material.dart';
import 'package:madeinnepal/model_screen/brand.dart';

class Trending extends StatefulWidget {
  const Trending({super.key});

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: brand.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 100,
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
                brand[index].imageurl.toString(),
                fit: BoxFit.cover,
              ),
            ],
          ),
        );
      },
    );
  }
}
