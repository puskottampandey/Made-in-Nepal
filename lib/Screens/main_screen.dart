import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:madeinnepal/Screens/cart_screen.dart';
import 'package:madeinnepal/Screens/home_screen.dart';
import 'package:madeinnepal/Screens/profile_screen.dart';
import 'package:madeinnepal/constant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedindex = 0;
  void tap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  Widget widgetscreen(int index) {
    switch (index) {
      case 0:
        return const Homepage();
      case 1:
        return const Cart(
          data: '',
        );
      case 2:
        return const Profile();
    }
    return const Text("Not founf");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Account",
          ),
        ],
        backgroundColor: kcolor,
        selectedItemColor: Colors.white,
        currentIndex: selectedindex,
        onTap: tap,
      ),
      /*
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
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
      */
      body: WillPopScope(
        onWillPop: () async {
          if (selectedindex != 0) {
            setState(() {
              selectedindex = 0;
            });
            return false;
          } else if (selectedindex == 0) {
            return await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: const Text("Are you sure you want to exit?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Cancel",
                            style: TextStyle(color: kcolor),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              SystemNavigator.pop();
                            },
                            child: const Text(
                              "Yes",
                              style: TextStyle(color: kcolor),
                            ))
                      ],
                    ));
          } else {
            return true;
          }
        },
        child: widgetscreen(selectedindex),
      ),
    );
  }
}
