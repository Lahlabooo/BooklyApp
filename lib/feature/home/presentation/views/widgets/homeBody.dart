import 'package:bookly/feature/home/presentation/views/widgets/CustomAppBar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/HomeItemslistView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          CustomAppBar(),
          ItemsListView(),
        ],
      ),
    );
  }
}
