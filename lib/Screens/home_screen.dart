import 'package:flutter/material.dart';
import 'package:madeinnepal/Screens/Allbrands_screen.dart';
import 'package:madeinnepal/Screens/categories_screen.dart';

import 'package:madeinnepal/Screens/row_Iteam.dart';
import 'package:madeinnepal/Screens/trendingitem_screen.dart';
import 'package:madeinnepal/constant.dart';
import 'package:shimmer/shimmer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "HamroSaman",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: kcolor,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
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
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notification_add),
                color: kcolor,
              ),
            ),
          )
        ],
      ),
      body: Scrollbar(
        thickness: 12,
        radius: const Radius.circular(5),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            top: true,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 55,
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
                        SizedBox(
                          width: 375,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  iconColor: kcolor,
                                  suffixIcon: Icon(Icons.search),
                                  suffixIconColor: kcolor,
                                  border: InputBorder.none,
                                  hintText: "Search Product......",
                                  hintStyle: TextStyle(color: kcolor)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Brands",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const Allbrands())));
                          },
                          child: const Text(
                            "View All",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: kcolor),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 175,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 0.0),
                    child: RowItems(),
                  ),
                ),
                const SizedBox(),
                const Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Text(
                        "Trending Products ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 280,
                  child: Trending(),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: kcolor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 175,
                  child: Categoreis(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
