import 'package:bookly/core/utilis/assets.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 110,
          height: 160,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetData.testImage), fit: BoxFit.fill),
            borderRadius: BorderRadiusDirectional.all(Radius.circular(15)),
          ),
        ),
      ],
    );
  }
}
