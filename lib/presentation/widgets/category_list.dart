import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  // Add a callback function and the currently selected category from parent
  final Function(String) onCategoryChanged;
  final String selectedCategory;

  const CategoryList({
    super.key,
    required this.onCategoryChanged,
    required this.selectedCategory,
  });

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final List<String> categories = const [
    "All",
    "Fruits",
    "Vegetables",
    "Snacks",
    "Bakery",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemBuilder: (context, index) {
          final isSelected = widget.selectedCategory == categories[index];

          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: FilterChip(
              label: Text(categories[index]),
              selected: isSelected,
              onSelected: (bool selected) {
                // Call the callback to notify HomePage
                widget.onCategoryChanged(categories[index]);
              },
              selectedColor: Colors.green.withOpacity(0.2),
              checkmarkColor: Colors.green,
              shape: StadiumBorder(
                side: BorderSide(
                  color: isSelected ? Colors.green : Colors.grey.shade300,
                ),
              ),
              labelStyle: TextStyle(
                color: isSelected ? Colors.green : Colors.black,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          );
        },
      ),
    );
  }
}
