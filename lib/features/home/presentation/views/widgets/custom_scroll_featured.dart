import 'package:bookly_app/features/home/presentation/views/widgets/custom_featured_item.dart';
import 'package:flutter/material.dart';

class CustomFeaturedBookList extends StatelessWidget {
  const CustomFeaturedBookList({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomFeaturedItem(
              image: images[index],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 16,
            );
          },
          itemCount: images.length),
    );
  }
}
