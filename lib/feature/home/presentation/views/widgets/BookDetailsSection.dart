import 'package:bookly/core/utilis/Styels.dart';
import 'package:bookly/feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly/feature/home/presentation/views/widgets/BookingRating.dart';
import 'package:bookly/feature/home/presentation/views/widgets/BooksAction.dart';
import 'package:bookly/feature/home/presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/widgets.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .25),
          child: CustomBookImage(
            url: book.volumeInfo?.imageLinks?.thumbnail ?? "",
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          book.volumeInfo?.title ?? "",
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
            book.volumeInfo?.authors?[0] ?? "",
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
        BooksAction(
          bookModel: book,
        ),
      ],
    );
  }
}
