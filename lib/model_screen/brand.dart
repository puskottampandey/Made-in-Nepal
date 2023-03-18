import 'package:flutter/material.dart';

class Product {
  final String? imageurl;
  final String? name;
  final int? price;

  Product({this.imageurl, this.name, this.price});
}

class Brand {
  final String? name;
  final String? imageurl;
  List<Product>? products;

  Brand({
    this.name,
    this.imageurl,
    this.products,
  });
}

const goldstariamge =
    "https://imgs.search.brave.com/jvaq1nG7GP6D9u20_UeSFMGibULOh3LaMJ8YKOwRRUI/rs:fit:800:259:1/g:ce/aHR0cDovL2Fzc2V0/cy1jZG4uZWthbnRp/cHVyLmNvbS9pbWFn/ZXMvdGhpcmQtcGFy/dHkvbW9uZXktZmlu/YW5jZS9Hb2xkU3Rh/cl9sb2dvLTA4MTIy/MDE3MDg0NjUwLTEw/MDB4MC5qcGc";

const caliberimage =
    "https://calibershoes.sgp1.digitaloceanspaces.com/uploads/2021/02/29182743/caliber-200px.png";

List<Brand> brand = [
  Brand(
    name: "goldstar",
    imageurl: goldstariamge,
    products: [
      Product(imageurl: goldstariamge, name: "G10", price: 1900),
      Product(imageurl: goldstariamge, name: "G10", price: 1900),
    ],
  ),
  Brand(name: "caliber", imageurl: caliberimage, products: [
    Product(
      imageurl: caliberimage,
      name: "mens caliber",
      price: 4000,
    ),
    Product(
      imageurl: caliberimage,
      name: "mens caliber",
      price: 4000,
    )
  ])
];
