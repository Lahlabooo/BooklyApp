import 'package:bookly/core/Models/book_model/book_model.dart';
import 'package:bookly/feature/home/presentation/views/widgets/CustomBookDetailAppBar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/SimiliarBooksSection.dart';
import 'package:flutter/material.dart';
import 'BookDetailsSection.dart';

class BookDetailBody extends StatelessWidget {
  const BookDetailBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          children: [
            const CustomBookDetailAppBar(),
            BookDetailsSection(
              book: book,
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 50,
            ),
            const SimiliarBooksSection(),
          ],
        ),
      ),
    ]);
  }
}
