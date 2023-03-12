import 'package:flutter/material.dart';
import 'package:madeinnepal/Screens/Brands_screen.dart';
import 'package:madeinnepal/Screens/row_Iteam.dart';
import 'package:madeinnepal/constant.dart';

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
        backgroundColor: kcolor,
        centerTitle: true,
        title: const Text(
          "Made in Nepal",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
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
                  onPressed: () {}, icon: const Icon(Icons.notification_add)),
            ),
          )
        ], /*
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            /*
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 0.0,
                  blurRadius: 2,
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),*/
            child: const Drawer(),
          ),
        ),
        */
      ),
      backgroundColor: kcolor,
      body: SingleChildScrollView(
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
                                suffixIcon: Icon(Icons.search),
                                border: InputBorder.none,
                                hintText: "Search"),
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
                          const Allbrands();
                        },
                        child: const Text(
                          "View All",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 200,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RowItems(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
