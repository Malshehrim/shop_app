import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stor_app/models/cart.dart';
import 'package:stor_app/screens/intro_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
      ),
    ),
  );
}
