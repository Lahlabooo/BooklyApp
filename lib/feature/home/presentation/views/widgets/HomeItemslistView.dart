import 'package:bookly/core/Widgets/CustomLoadingIndicator.dart';
import 'package:bookly/core/Widgets/customErrorWidget.dart';
import 'package:bookly/core/utilis/app_routers.dart';
import 'package:bookly/feature/home/presentation/Manager/featuredBooksCubit/FeaturedBooksCubit.dart';
import 'package:bookly/feature/home/presentation/Manager/featuredBooksCubit/FeaturedBooksStates.dart';
import 'package:bookly/feature/home/presentation/views/widgets/HomeItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
        builder: (BuildContext context, state) {
      if (state is FeaturedBooksSuccess) {
        return Skeletonizer(
          enabled: false,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kBookDetailView,
                      extra: state.books[index],
                    );
                  },
                  child: HomeItem(
                    book: state.books[index],
                  ),
                );
              },
            ),
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return CustomErrorWidget(
          errMessage: state.errMessage,
        );
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
