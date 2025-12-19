import 'package:flutter/material.dart';
import 'dart:async';

class PromoSlider extends StatefulWidget {
  const PromoSlider({super.key});

  @override
  State<PromoSlider> createState() => _PromoSliderState();
}

class _PromoSliderState extends State<PromoSlider> {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  // List of promo background images
  final List<String> promoImages = [
    'https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?q=80&w=2070',
    'https://images.unsplash.com/photo-1511512578047-dfb367046420?q=80&w=2071',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    // Auto-slide every 2 seconds
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < promoImages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 800),
        curve: Curves.fastOutSlowIn,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) => _currentPage = index,
        itemCount: promoImages.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // Option 1: IMAGE BACKGROUND
              image: DecorationImage(
                image: NetworkImage(promoImages[index]),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(
                    0.3,
                  ), // Darkens image so text is readable
                  BlendMode.darken,
                ),
              ),

              gradient: LinearGradient(
                colors: index % 2 == 0
                    ? [Colors.orange, Colors.deepOrange]
                    : [Colors.blue, Colors.indigo],
              ),
            ),
            child: const Center(
              child: Text(
                "Big Sale! 50% Off",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(blurRadius: 10, color: Colors.black)],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
