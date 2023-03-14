import 'package:flutter/material.dart';

class Allbrands extends StatefulWidget {
  const Allbrands({super.key});

  @override
  State<Allbrands> createState() => _AllbrandsState();
}

class _AllbrandsState extends State<Allbrands> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Brands"),
      ),
    );
  }
}
