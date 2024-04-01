import 'package:appmania/screens/cart_page.dart';
import 'package:appmania/screens/detail_page.dart';
import 'package:appmania/screens/home_page.dart';
import 'package:appmania/screens/like_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homepage(),
        'DetailPage': (context) => const DetailPage(),
        'Cart_page': (context) => const CartPage(),
        'like_page': (context) => const Favourite(),
      },
    ),
  );
}
