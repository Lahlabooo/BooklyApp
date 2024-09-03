import 'package:bookly/feature/home/presentation/views/widgets/HomeItem%20copy.dart';
import 'package:flutter/material.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const HomeItem();
        },
      ),
    );
  }
}
