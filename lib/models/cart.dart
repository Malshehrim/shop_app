import 'package:flutter/material.dart';
import 'package:stor_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale

  List<Shoe> shoShop = [
    Shoe(
      name: 'Nike White',
      price: '99',
      imagePath: 'lib/images/white_shose.webp',
      description: 'great blue shoes sfasdfsadfsdfsdfasdfdsafadsfasdfsdfsdf',
    ),
    Shoe(
      name: 'Nike red',
      price: '999',
      imagePath: 'lib/images/red_shose.jpg',
      description: 'nice red shoes',
    ),
    Shoe(
      name: 'Nike blue red',
      price: '1299',
      imagePath: '/Users/mosh/stor_app/lib/images/blue_shoce.webp',
      description: 'nice blue red shoes',
    ),
    Shoe(
      name: 'Nike Black',
      price: '98',
      imagePath: 'lib/images/black_shose.webp',
      description: 'nice Black shoes',
    ),
  ];
  // list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
