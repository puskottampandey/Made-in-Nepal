import 'dart:async';

import 'package:flutter/material.dart';
import 'package:madeinnepal/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(
        context,
        '/loginscreen',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kcolor,
    );
  }
}
