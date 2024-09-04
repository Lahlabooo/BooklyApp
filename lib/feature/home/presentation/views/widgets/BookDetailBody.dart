import 'package:bookly/feature/home/presentation/views/widgets/CustomBookDetailAppBar.dart';
import 'package:flutter/material.dart';

class BookDetailBody extends StatelessWidget {
  const BookDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomBookDetailAppBar(),
      ],
    );
  }
}
