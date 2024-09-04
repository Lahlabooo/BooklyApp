import 'package:bookly/feature/home/presentation/views/widgets/BestSellerItem.dart';
import 'package:flutter/material.dart';

class BestSellerItemList extends StatelessWidget {
  const BestSellerItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: BestSellerItem(),
        );
      },
    );
  }
}
