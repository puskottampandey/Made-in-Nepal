import 'package:flutter/material.dart';
import 'package:madeinnepal/model_screen/brand.dart';

class Brands extends StatefulWidget {
  const Brands({
    super.key,
  });

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Brands")),
        body: SingleChildScrollView(
          child: Row(
            children: [
              const SizedBox(),
              ListView.builder(
                itemCount: brand.products?.length,
                itemBuilder: (BuildContext context, int count) {
                  return Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
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
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ));
                },
              ),
            ],
          ),
        ));
  }
}
