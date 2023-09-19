import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/booking_rate.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SizedBox(
        height: 125,
        child: GestureDetector(
          onTap: (){
            Get.to(const DetailsView(),
                transition: Transition.fade, duration: kTransitionDuration);
          },
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          AssetsData.testBook,
                        ),
                      )),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child:const  Text(
                          'Harry Potter and the Goblet of Fire',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle20
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      'J.K. Rowling',
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          '19.99 €',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
