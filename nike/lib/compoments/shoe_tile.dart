import 'package:flutter/material.dart';
import 'package:nike/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;

  void Function()? onTap;

  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min, // Important
        children: [
          // shoe image - reduced height
          SizedBox(
            width: double.infinity,
            height: 180, // Reduced from 280
            
            child: Container(
              color: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  shoe.imagePath,
                
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),

          // Description
          Padding(
            padding: const EdgeInsets.only(left: 25.0,right: 25.0),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 8),
          // Price + detail
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // shoe name
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          shoe.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        // shoe price
                        Text(
                          '\$${shoe.price}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Add plus button
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)
                    )
                  ),
                  child: const Icon(Icons.add_circle, color: Colors.white, size: 30),
                ),
              )
             
            ],
          ),
        ],
      ),
    );
  }
}