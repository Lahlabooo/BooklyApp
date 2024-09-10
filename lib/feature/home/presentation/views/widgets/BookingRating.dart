import 'package:bookly/core/utilis/Styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 18,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 7,
        ),
        const Text(
          "4.8",
          style: Styels.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(4225)',
          style: Styels.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
