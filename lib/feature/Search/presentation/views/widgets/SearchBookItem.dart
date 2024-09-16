import 'package:bookly/constants.dart';
import 'package:bookly/core/utilis/Styels.dart';
import 'package:bookly/core/Models/book_model/book_model.dart';
import 'package:bookly/feature/home/presentation/views/widgets/BookingRating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SearchBookItem extends StatelessWidget {
  const SearchBookItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: AspectRatio(
              aspectRatio: 2.8 / 4,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
                errorWidget: (context, url, error) => const Icon(Icons.error),
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
