import 'package:bookly/core/Widgets/CustomLoadingIndicator.dart';
import 'package:bookly/core/Widgets/customErrorWidget.dart';
import 'package:bookly/core/utilis/app_routers.dart';
import 'package:bookly/feature/Search/presentation/manager/fetchSearchBooks/featch_search_books_cubit.dart';
import 'package:bookly/feature/Search/presentation/views/widgets/SearchBookItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchSearchBooksCubit, FeatchSearchBooksState>(
      builder: (context, state) {
        if (state is FeatchSearchBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailView,
                          extra: state.books[index]);
                    },
                    child: SearchBookItem(book: state.books[index])),
              );
            },
          );
        } else if (state is FeatchSearchBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
