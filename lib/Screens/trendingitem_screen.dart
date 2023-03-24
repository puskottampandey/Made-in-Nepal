import 'package:flutter/material.dart';
import 'package:madeinnepal/model_screen/brand.dart';

class Trending extends StatelessWidget {
  final Brand brand;
  const Trending({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: brand.products?.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
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
            child: Row(
              children: [
                Container(
                  height: 120,
                  width: 120,
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
                  child: Image.network(
                    brand.products![index].imageurl.toString(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
