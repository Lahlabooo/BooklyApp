import 'package:bookly/constants.dart';
import 'package:bookly/core/utilis/Styels.dart';
import 'package:bookly/feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly/feature/home/presentation/views/widgets/BookingRating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        (book.volumeInfo?.imageLinks?.thumbnail) ?? ""),
                    fit: BoxFit.fill),
                borderRadius:
                    const BorderRadiusDirectional.all(Radius.circular(15)),
              ),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    (book.volumeInfo?.title)!,
                    style:
                        Styels.textStyle20.copyWith(fontFamily: kGtSectraFine),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  (book.volumeInfo?.authors![0])!,
                  style: Styels.textStyle14,
                ),
                const SizedBox(
                  height: 7,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "Free",
                        style: Styels.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
