import 'package:bookly/core/utilis/app_routers.dart';
import 'package:bookly/feature/home/presentation/views/widgets/BookListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BestSellerItemList extends StatelessWidget {
  const BestSellerItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kBookDetailView);
              },
              child: const BookListViewItem()),
        );
      },
    );
  }
}
