import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stor_app/models/cart.dart';
import 'package:stor_app/models/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({
    super.key,
    required this.shoe,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
    showDialog(
        context: context,
        builder: (ctx) => const AlertDialog(
              title: Text('Reomver done'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[100]),
      margin: const EdgeInsets.only(bottom: 9),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        subtitle: Text(widget.shoe.price),
        title: Text(widget.shoe.name),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
