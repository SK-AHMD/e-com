import 'package:ecom/presentation/Screens/cart_page.dart';
import 'package:ecom/presentation/bloc/cart_cubit.dart';
import 'package:ecom/presentation/widgets/category_list.dart';
import 'package:ecom/presentation/widgets/product_card.dart';
import 'package:ecom/presentation/widgets/promo_slider.dart';
import 'package:ecom/presentation/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Initial category to all
  String _currentCategory = "All";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Commerce App"),
        actions: [
          BlocBuilder<CartCubit, int>(
            builder: (context, count) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.shopping_cart, size: 30),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => CartPage(),
                          ),
                        );
                      },
                    ),
                    if (count > 0)
                      Positioned(
                        right: 8,
                        top: 8,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            '$count',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PromoSlider(),
            const SectionTitle(title: "Categories"),

            CategoryList(
              selectedCategory: _currentCategory,
              onCategoryChanged: (category) {
                setState(() {
                  _currentCategory = category;
                });
              },
            ),

            const SectionTitle(title: "Featured Products"),

            ProductGrid(selectedCategory: _currentCategory),
          ],
        ),
      ),
    );
  }
}
