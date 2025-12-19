import 'package:ecom/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          Image.network(
            product.imageUrl,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(
            product.name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "₹${product.price}",
            style: const TextStyle(fontSize: 20, color: Colors.green),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("This is a placeholder for the product description."),
          ),
        ],
      ),
    );
  }
}
