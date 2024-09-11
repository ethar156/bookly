import 'package:bookly_app/core/utlis/assests.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
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
          const SizedBox(
            width: 30,
          ),
           Expanded(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                SizedBox(
                  width: MediaQuery.of(context).size.width*.5,
                  child: const Text('Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Style.TextStyle20,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'J.K. Rowling',
                  style: Style.TextStyle14
                  ),
                   Row(
                    children: [
                      Text('19.9 €',
                      style:Style.TextStyle20.copyWith(
                        fontWeight: FontWeight.bold
                      ) ,),
                      const Spacer(),
                      
                      const BookRating()
                    ],
                  )
                ],),
           ),
        ],
      ),
    );
  }
}

