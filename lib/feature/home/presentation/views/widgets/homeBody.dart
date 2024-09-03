import 'package:bookly/core/utilis/Styels.dart';
import 'package:bookly/feature/home/presentation/views/widgets/BestSellerItem.dart';
import 'package:bookly/feature/home/presentation/views/widgets/CustomAppBar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/HomeItemslistView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          ItemsListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best seller ",
            style: Styels.mediumTitle,
          ),
          SizedBox(
            height: 15,
          ),
          BestSellerItem(),
        ],
      ),
    );
  }
}
