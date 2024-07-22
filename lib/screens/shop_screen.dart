import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stor_app/components/shoe_tile.dart';
import 'package:stor_app/models/cart.dart';
import 'package:stor_app/models/shoe.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  //add shoo to cart
  void addshoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // alert the user about added item
    showDialog(
      context: context,
      builder: (ctx) => const AlertDialog(
        title: Text('Sucsessfuly Added'),
        content: Text('Check your Cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(12),
              color: Colors.grey[200],
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
            // message
          ),
          //hot picks

          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot picks🔥',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // const SizedBox(height: 19),
                // fell up the rest of space
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // list of shoes for sale
          Expanded(
            child: ListView.builder(
              itemCount: value.shoShop.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //return the shoe

                Shoe shoe = value.getShoeList()[index];

                return ShoeTile(
                  show: shoe,
                  onTap: () => addshoeToCart(shoe),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 35,
              left: 35,
              right: 35,
            ),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
