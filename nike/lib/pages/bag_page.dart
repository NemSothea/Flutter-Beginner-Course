import 'package:flutter/material.dart';
import 'package:nike/compoments/cart_item.dart';
import 'package:nike/models/cart.dart';
import 'package:nike/models/shoe.dart';
import 'package:provider/provider.dart';

class BagPage extends StatelessWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              "My Bag",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // items in the bag
            Expanded(
              child: ListView.builder(
                itemCount: value.userCart.length,
                itemBuilder: (context, index) {
                  // get the shoe from user cart
                  Shoe shoe = value.getUserCart()[index];

                  // return cart item widget
                  return CartItem(shoe: shoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
