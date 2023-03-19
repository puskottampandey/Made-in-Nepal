import 'package:flutter/material.dart';
import 'package:madeinnepal/constant.dart';
import 'package:madeinnepal/model_screen/brand.dart';

class Brands extends StatelessWidget {
  final Brand brand;
  const Brands({
    super.key,
    required this.brand,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          brand.name.toString(),
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: kcolor,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brand.products?.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        width: 175,
                        margin: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 8),
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              brand.products![index].name.toString(),
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    brand.products![index].price.toString(),
                                    style: const TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Text(
                                  brand.products![index].lastprice.toString(),
                                  style: const TextStyle(
                                      fontSize: 10,
                                      decoration: TextDecoration.lineThrough,
                                      decorationThickness: 1),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: 0.1,
                        child: Container(
                          height: 175,
                          width: 175,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadiusDirectional.circular(8),
                            child: Image.network(
                              brand.products![index].imageurl.toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
