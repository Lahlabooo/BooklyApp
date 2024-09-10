import 'package:bookly/core/utilis/Styels.dart';
import 'package:bookly/feature/home/presentation/views/widgets/BookingRating.dart';
import 'package:bookly/feature/home/presentation/views/widgets/BooksAction.dart';
import 'package:bookly/feature/home/presentation/views/widgets/CustomBookDetailAppBar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/SimiliarBooksSection.dart';
import 'package:flutter/material.dart';
import 'CustomBookImage.dart';

class BookDetailBody extends StatelessWidget {
  const BookDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailAppBar(),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .25),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          " The Jungle Book ",
          style: Styels.textStyle30,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            " Rudyard Kypling ",
            style: Styels.textStyle16.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
        const BooksAction(),
        const SizedBox(
          height: 50,
        ),
        const SimiliarBooksSection(),
      ],
    );
  }
}
