import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stor_app/models/cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Consumer<Cart>(
        builder: (context, value, child) => const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            children: [
              Text(
                'My Cart',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,),
              ),
              SizedBox(height: 10),
              Expanded(child:ListView.builder(itemCount: 4,itemBuilder: (context, index) => ,))
            ],
          ),
        ),
      ),
    );
  }
}
