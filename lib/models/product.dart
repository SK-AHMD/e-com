class Product {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final String category;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.category,
  });
}

// Product Data
final List<Product> mockProducts = [
  Product(
    id: '1',
    name: 'Fresh Avocado',
    category: 'Fruits',
    price: 20,
    imageUrl:
        "https://images.pexels.com/photos/32621612/pexels-photo-32621612.jpeg",
  ),
  Product(
    id: '2',
    name: 'Organic Carrots',
    category: 'Vegetables',
    price: 50,
    imageUrl: 'https://images.pexels.com/photos/65174/pexels-photo-65174.jpeg',
  ),
  Product(
    id: '3',
    name: 'Mixed Nuts',
    category: 'Snacks',
    price: 44,
    imageUrl:
        "https://images.pexels.com/photos/5507691/pexels-photo-5507691.jpeg",
  ),
  Product(
    id: '4',
    name: 'Red Apple',
    category: 'Fruits',
    price: 155,
    imageUrl:
        'https://images.pexels.com/photos/672101/pexels-photo-672101.jpeg',
  ),
  Product(
    id: '5',
    name: 'Broccoli',
    category: 'Vegetables',
    price: 76,
    imageUrl:
        'https://images.pexels.com/photos/47347/broccoli-vegetable-food-healthy-47347.jpeg',
  ),
  Product(
    id: '6',
    name: 'Potato Chips',
    category: 'Snacks',
    price: 33,
    imageUrl:
        "https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg",
  ),
];
