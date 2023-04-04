import 'package:flutter/material.dart';
import 'package:madeinnepal/brandproduct/productdetails_screen.dart';
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
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          brand.name.toString(),
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: kcolor,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: brand.products?.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetails(
                                        products: brand.products![index],
                                      )));
                        },
                        child: Container(
                          width: 190,
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
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  brand.products![index].name.toString(),
                                  style: const TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      brand.products![index].price.toString(),
                                      style: const TextStyle(
                                          color: pricecolor,
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
                      ),
                      Positioned(
                        right: 0.5,
                        top: 0.1,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetails(
                                          products: brand.products![index],
                                        )));
                          },
                          child: Container(
                            height: 135,
                            width: 185,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Hero(
                              tag: brand.products![index].imageurl.toString(),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadiusDirectional.circular(8),
                                child: Image.network(
                                  brand.products![index].imageurl.toString(),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
