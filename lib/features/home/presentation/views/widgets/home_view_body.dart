import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_scroll_featured.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  final List<String> images = [
    "assets/images/book1.png",
    "assets/images/book3.png",
    "assets/images/book3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 48,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomAppBar(),
          ),
          const SizedBox(
            height: 46,
          ),
          CustomFeaturedBookList(images: images),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Best Seller",
              style: Styles.textStyle18,
            ),
          ),
          const SizedBox(height: 20,),
          const BestSellerListView(),

        ],
      ),
    );
  }
}


