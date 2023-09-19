import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: ListView.separated(itemBuilder: (context, index) {
          return const BestSellerItem();
        }, separatorBuilder: (context, index) {
          return const SizedBox(height: 6,);
        }, itemCount: 6),
      ),
    );
  }
}
