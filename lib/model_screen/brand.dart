import 'package:flutter/material.dart';

class Brand {
  final String? name;
  final String? imageurl;

  Brand({this.name, this.imageurl});
}

const goldstariamge =
    "https://imgs.search.brave.com/jvaq1nG7GP6D9u20_UeSFMGibULOh3LaMJ8YKOwRRUI/rs:fit:800:259:1/g:ce/aHR0cDovL2Fzc2V0/cy1jZG4uZWthbnRp/cHVyLmNvbS9pbWFn/ZXMvdGhpcmQtcGFy/dHkvbW9uZXktZmlu/YW5jZS9Hb2xkU3Rh/cl9sb2dvLTA4MTIy/MDE3MDg0NjUwLTEw/MDB4MC5qcGc";

const caliberimage =
    "https://calibershoes.sgp1.digitaloceanspaces.com/uploads/2021/02/29182743/caliber-200px.png";

List<Brand> brand = [
  Brand(name: "goldstar", imageurl: goldstariamge),
  Brand(name: "caliber", imageurl: caliberimage)
];
