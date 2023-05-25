import 'package:flutter/material.dart';
import 'package:madeinnepal/brandproduct/productdetails_screen.dart';
import 'package:madeinnepal/constant.dart';
import 'package:madeinnepal/model_screen/brand.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: brand.length * 3,
      itemBuilder: (BuildContext context, int index) {
        final brandindex = index ~/ 3;
        final productindex = index % 3;
        final product = brand[brandindex].products![productindex];
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductDetails(products: product)));
            },
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
                    child: ClipRRect(
                      borderRadius: BorderRadiusDirectional.circular(8),
                      child: Image.network(product.imageurl.toString(),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        product.name.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            product.price.toString(),
                            style: const TextStyle(
                                color: pricecolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            product.lastprice.toString(),
                            style: const TextStyle(
                                fontSize: 10,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 1),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
