import 'package:flutter/material.dart';
import 'package:madeinnepal/constant.dart';
import 'package:madeinnepal/model_screen/brand.dart';

class ProductDetails extends StatefulWidget {
  final Product products;
  const ProductDetails({super.key, required this.products});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 13),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(blurRadius: 3),
            ],
          ),
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.products.price.toString(),
                  style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: pricecolor),
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: kcolor,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: const Center(
                    child: Text(
                  "Buy",
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: kcolor,
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.products.imageurl.toString(),
                  child: ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(30),
                    child: Image.network(
                      widget.products.imageurl.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.share))
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
            child: Container(
              height: MediaQuery.of(context).size.width * 0.85,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(blurRadius: 3),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.products.name.toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 8),
                        child: Text(
                          widget.products.price.toString(),
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: pricecolor),
                        ),
                      ),
                      Text(
                        widget.products.lastprice.toString(),
                        style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
