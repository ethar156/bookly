import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [ 
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const SafeArea(child: CustomBookDetailsAppBar()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text('the Jungle Book',
              style: Style.TextStyle30.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text('Rudyard Kipling',
                style: Style.TextStyle18.copyWith(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
           const BooksAction(),
            const Expanded(
              child:  SizedBox(
                height: 50,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Style.TextStyle14.copyWith(
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const similarBooksListView(),
            const SizedBox(
              height: 40,
            )
        ],
      ),
    )
        )
      ],
    );
   
  }
}


