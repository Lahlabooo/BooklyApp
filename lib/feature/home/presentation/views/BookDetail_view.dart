import 'package:bookly/feature/home/presentation/views/widgets/BookDetailBody.dart';
import 'package:flutter/material.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailBody(),
    );
  }
}
