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
    "https://www.goldstarshoes.com/MediaThumb/original/Media/Goldstar/Logos/goldstar-logo-blue.png";

const caliberimage =
    "https://calibershoes.sgp1.digitaloceanspaces.com/uploads/2021/02/29182743/caliber-200px.png";

List<Brand> brand = [
  Brand(
    name: "Goldstar",
    imageurl: goldstariamge,
    products: [
      Product(
          imageurl: "https://www.goldstarshoes.com/Media/1_8.png",
          name: "P303 shoes for women",
          price: "Rs.1,900",
          lastprice: "Rs.1,800"),
      Product(
          imageurl: 'https://www.goldstarshoes.com/Media/highlander_(4).png',
          name: "G10 G2006",
          price: "Rs.3,285",
          lastprice: "Rs.3650"),
      Product(
          imageurl: 'https://www.goldstarshoes.com/Media/2_22.png',
          name: "G10 G100A",
          price: "Rs.2,525",
          lastprice: "Rs.3600"),
    ],
  ),
  Brand(name: "Caliber", imageurl: caliberimage, products: [
    Product(
        imageurl:
            'https://calibershoes.sgp1.digitaloceanspaces.com/uploads/2022/12/06132908/2-2-600x450.jpg',
        name: "Mens caliber",
        price: "Rs.4,000",
        lastprice: "Rs.3,500"),
    Product(
        imageurl:
            "https://calibershoes.sgp1.digitaloceanspaces.com/uploads/2022/01/29181651/832-Black-Side-2-600x450.png",
        name: "Mens caliber",
        price: " Rs.4,000",
        lastprice: "Rs.3,000"),
    Product(
        imageurl:
            'https://calibershoes.sgp1.digitaloceanspaces.com/uploads/2022/12/02214942/824-Black-2-600x450.jpg',
        name: "Mens caliber",
        price: "Rs.4,000",
        lastprice: "Rs.3,500"),
  ]),
  Brand(
    name: "Mheecha",
    imageurl:
        "http://mheecha.com/mc/wp-content/uploads/2016/11/web_logo_mheecha-01.png",
    products: [
      Product(
          imageurl:
              "https://www.mheecha.com/mc/wp-content/uploads/2021/11/front_navyblue_orange-6-504x600.jpg",
          name: "ALLEY BACKPACK",
          price: "Rs.3,150",
          lastprice: "Rs.3,500"),
      Product(
          imageurl:
              'https://www.mheecha.com/mc/wp-content/uploads/2020/08/archer_chambraymaroon_front-504x600.jpg',
          name: "ARCHER BACKPACK",
          price: "Rs.3,750",
          lastprice: "Rs.4,000"),
      Product(
          imageurl:
              "https://www.mheecha.com/mc/wp-content/uploads/2021/10/Deepteal_Icegrey_Front-504x600.jpg",
          name: "ALLEY BACKPACK",
          price: "Rs.3,150",
          lastprice: "Rs.3,500"),
    ],
  ),
];
