class Product {
  final String? imageurl;
  final String? name;
  final String? price;
  final String? lastprice;

  Product({this.imageurl, this.name, this.price, this.lastprice});
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
    name: "Goldstar",
    imageurl: goldstariamge,
    products: [
      Product(
          imageurl:
              "https://imgs.search.brave.com/8CuGe8x7-QmNfcwxrjzQH__wNXPY-6sXOE4P-ByAsBM/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5W/U2VwV0lidTBMZWp4/cmZVcVcydFl3SGFI/YSZwaWQ9QXBp",
          name: "G10",
          price: "Rs.1,900",
          lastprice: "Rs.1,800"),
      Product(
          imageurl:
              'https://imgs.search.brave.com/7gRnp_ml4qgEcwD3zhdmpn6mW24ni5-hMeZiz3q9Xis/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5W/MUZ5bUNTUmhiWk1W/N3ZQWTNNZS1BSGFI/YSZwaWQ9QXBp',
          name: "G10",
          price: "Rs.1,900",
          lastprice: "Rs.1,800"),
    ],
  ),
  Brand(name: "Caliber", imageurl: caliberimage, products: [
    Product(
        imageurl:
            'https://imgs.search.brave.com/7xW3PH_p-h3_Wiazo-OKojc74GSO091QbpM4BizblXA/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5r/U0NjTEdXMXB0d29Z/RURXVEdYbktBSGFI/YSZwaWQ9QXBp',
        name: "Mens caliber",
        price: "Rs.4,000",
        lastprice: "Rs.3,500"),
    Product(
        imageurl:
            "https://imgs.search.brave.com/DNcfzohHt3i0A46FSxfWPLxq1Yiv1hdnR-rchQw7zPc/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC4w/NzNyU0o5VzJkNndU/QUJEeUdoSmJBSGFI/YSZwaWQ9QXBp",
        name: "Mens caliber",
        price: " Rs.4,000",
        lastprice: "Rs.3,000")
  ])
];
