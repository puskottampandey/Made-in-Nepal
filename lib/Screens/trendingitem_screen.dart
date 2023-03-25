import 'package:flutter/material.dart';
import 'package:madeinnepal/brandproduct/productdetails_screen.dart';
import 'package:madeinnepal/model_screen/brand.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: brand.length * 2,
      itemBuilder: (BuildContext context, int index) {
        final brandindex = index ~/ 2;
        final productindex = index % 2;
        final product = brand[brandindex].products![productindex];
        return Padding(
          padding: const EdgeInsets.all(8.0),
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
                    child: Hero(
                      tag: product.imageurl.toString(),
                      child: ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(8),
                        child: Image.network(product.imageurl.toString(),
                            fit: BoxFit.cover),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
