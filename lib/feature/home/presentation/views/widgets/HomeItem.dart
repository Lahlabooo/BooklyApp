import 'package:bookly/feature/home/data/Models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .30,
        child: AspectRatio(
          aspectRatio: .7,
          child: Container(
            width: 50,
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
      ),
    );
  }
}
