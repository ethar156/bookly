import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/assests.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
           customAppBar(),
           FeaturedBooksListView(),
           SizedBox(
            height: 50,
          ),
          Text('Best Seller',
          style: Style.TextStyle18
          ),
          const BestSellerListViewItem()
          ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.18, 
          height: MediaQuery.of(context).size.height * 0.14,  
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssestsData.testImage),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
