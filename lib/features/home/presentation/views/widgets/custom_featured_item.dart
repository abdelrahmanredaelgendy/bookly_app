import 'package:flutter/material.dart';

class CustomFeaturedItem extends StatelessWidget {
  const CustomFeaturedItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Image.asset(
            image,
          ),
        ],
      ),
    );
  }
}