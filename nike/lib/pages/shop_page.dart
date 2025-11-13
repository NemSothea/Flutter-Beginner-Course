import 'package:flutter/material.dart';
import 'package:nike/compoments/shoe_tile.dart';
import 'package:nike/models/cart.dart';
import 'package:nike/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void AddShoeToCart(Shoe shoe) {
    // Access the Cart model and add the shoe
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    // Show a snackbar confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${shoe.name} added to cart!'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Icon(Icons.search, color: Colors.grey),
                ],
              ),
            ),
            // Message for shop page
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Move the world forward through the power of sport',
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
            ),

            // hot deals section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Hot Deals 🔥',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            // List of shoes sales
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                 // get shoe from cart model
                  Shoe shoe = value.getShopList()[index];

                  return Container(
                    width:
                        MediaQuery.of(context).size.width *
                        0.8, // Match ShoeTile width
                    margin: EdgeInsets.only(right: 16),
                    child: 
                    ShoeTile(shoe: shoe, onTap: () => AddShoeToCart(shoe))
                    
                    ,
                  );
                },
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Divider(color: Colors.white),
            ),
          ],
        );
      },
    );
  }
}
