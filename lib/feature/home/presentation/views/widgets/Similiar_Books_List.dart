import 'package:flutter/material.dart';

import 'CustomBookImage.dart';

class SimiliarBooksList extends StatelessWidget {
  const SimiliarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: CustomBookImage(),
            );
          }),
    );
  }
}
