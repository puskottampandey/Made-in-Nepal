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
        title: Text(brand.name.toString()),
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
                          children: const [
                            /*
                            const SizedBox(),
                            ClipRRect(
                              borderRadius: BorderRadiusDirectional.circular(8),
                              child: Image.network(
                                brand.products![index].imageurl.toString(),
                                fit: BoxFit.cover,
                              ),
                            ),
                            
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                brand.products![index].price.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            */
                          ],
                        ),
                      ),
                      Positioned(
                        right: 9,
                        top: 2,
                        child: Container(
                          height: 150,
                          width: 175,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 0.0,
                                blurRadius: 2,
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
