import 'package:bookly/core/Widgets/CustomLoadingIndicator.dart';
import 'package:bookly/core/Widgets/customErrorWidget.dart';
import 'package:bookly/feature/home/presentation/Manager/SimiliarBooksCubit/similir_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CustomBookImage.dart';

class SimiliarBooksList extends StatelessWidget {
  const SimiliarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilirBooksCubit, SimilirBooksState>(
      builder: (context, state) {
        if (state is SimilirBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: CustomBookImage(
                      url: state
                              .books[index].volumeInfo?.imageLinks?.thumbnail ??
                          "",
                    ),
                  );
                }),
          );
        } else if (state is SimilirBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
