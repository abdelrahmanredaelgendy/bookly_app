import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_featured_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomBookDetailsAppBar(),
            const SizedBox(
              height: 36,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .33,
              child: const CustomFeaturedItem(image: "assets/images/book1.png"),
            ),
          ],
        ),
      ),
    );
  }
}
