import 'package:flutter/material.dart';
import 'package:nike/models/shoe.dart';

class Cart extends ChangeNotifier {
  // Simple list of shoes in the cart
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Max 270',
      price: '150',
      imagePath: 'lib/images/amanjakhar.jpg',
      description: 'Every Jordan Retro is a classic sneaker, recreated for a new generation. Made with premium materials and full of signature Jordan details,',
    ),
    Shoe(
      name: 'Air Max 230',
      price: '180',
      imagePath: 'lib/images/bemistermister.jpg',
      description: 'Comfortable and stylish',
    ),
    Shoe(
      name: 'Air Max 230',
      price: '120',
      imagePath: 'lib/images/craytive.jpg',
      description: 'Comfortable and stylish',
    ),
    Shoe(
      name: 'Air Max 210',
      price: '130',
      imagePath: 'lib/images/melvin_buezo.jpg',
      description: 'Comfortable and stylish',
    ),
  ];

  // List of items in the cart
  List<Shoe> userCart = [];

  // Get list of shoes for sale
  List<Shoe> getShopList() {
    return shoeShop;
  }

  // Get list of items in the cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // Add item to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // Remove item from cart
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
     notifyListeners();
  }
}
