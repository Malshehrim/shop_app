import 'package:flutter/material.dart';
import 'package:stor_app/components/shoe_tile.dart';
import 'package:stor_app/models/shoe.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //create a shoe
              Shoe shoe = Shoe(
                name: 'nike black',
                price: '179',
                imagePath: 'lib/images/black_shose.webp',
                description: 'black shoes ',
              );
              return ShoeTile(
                show: shoe,
              );
            },
          ),
        ),
      ],
    );
  }
}
