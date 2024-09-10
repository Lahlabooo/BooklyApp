import 'package:bookly/core/utilis/Styels.dart';
import 'package:flutter/material.dart';

import 'Similiar_Books_List.dart';

class SimiliarBooksSection extends StatelessWidget {
  const SimiliarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styels.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimiliarBooksList(),
        ],
      ),
    );
  }
}
