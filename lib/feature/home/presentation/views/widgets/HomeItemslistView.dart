import 'package:bookly/core/utilis/Styels.dart';
import 'package:bookly/feature/home/presentation/Manager/featuredBooksCubit/FeaturedBooksCubit.dart';
import 'package:bookly/feature/home/presentation/Manager/featuredBooksCubit/FeaturedBooksStates.dart';
import 'package:bookly/feature/home/presentation/views/widgets/HomeItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            height: MediaQuery.of(context).size.height * .30,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return HomeItem(
                  book: state.books[index],
                );
              },
            ),
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return Center(
          child: Text(
            state.errMessage,
            style: Styels.textStyle20,
          ),
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
