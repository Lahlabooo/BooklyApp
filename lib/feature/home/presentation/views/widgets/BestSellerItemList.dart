import 'package:bookly/core/Widgets/CustomLoadingIndicator.dart';
import 'package:bookly/core/Widgets/customErrorWidget.dart';
import 'package:bookly/core/utilis/app_routers.dart';
import 'package:bookly/feature/home/presentation/Manager/NewestbooksCubit/NewestBooksCubit.dart';
import 'package:bookly/feature/home/presentation/Manager/NewestbooksCubit/NewestBooksStates.dart';
import 'package:bookly/feature/home/presentation/views/widgets/BookListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BestSellerItemList extends StatelessWidget {
  const BestSellerItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
      builder: (BuildContext context, NewestBooksStates state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailView,
                          extra: state.books[index]);
                    },
                    child: BookListViewItem(book: state.books[index])),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
