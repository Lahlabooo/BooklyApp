import 'package:bookly/feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly/feature/home/presentation/Manager/SimiliarBooksCubit/similir_books_cubit.dart';
import 'package:bookly/feature/home/presentation/views/widgets/BookDetailBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailView extends StatefulWidget {
  const BookDetailView({super.key, required this.book});
  final BookModel book;
  @override
  State<BookDetailView> createState() => _BookDetailViewState();
}

class _BookDetailViewState extends State<BookDetailView> {
  @override
  void initState() {
    BlocProvider.of<SimilirBooksCubit>(context).fetchSimiliarBooks(
        category: widget.book.volumeInfo?.categories![0] ?? "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailBody(),
    );
  }
}
