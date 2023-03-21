import 'package:flutter/material.dart';
import 'package:madeinnepal/Screens/home_screen.dart';

import 'package:madeinnepal/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Homepage();
  }
}
