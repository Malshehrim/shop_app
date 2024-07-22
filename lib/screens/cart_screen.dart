import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stor_app/components/cart_item.dart';
import 'package:stor_app/models/cart.dart';
import 'package:stor_app/models/shoe.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Consumer<Cart>(
        builder: (context, value, child) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My Cart',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    // get individual shoe
                    Shoe individualShoe = value.getUserCart()[index];

                    //return the cart item
                    return CartItem(
                      shoe: individualShoe,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
