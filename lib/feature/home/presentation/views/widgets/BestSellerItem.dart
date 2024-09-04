import 'package:bookly/constants.dart';
import 'package:bookly/core/utilis/Styels.dart';
import 'package:bookly/core/utilis/assets.dart';
import 'package:bookly/feature/home/presentation/views/widgets/BookingRating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetData.testImage), fit: BoxFit.fill),
                borderRadius: BorderRadiusDirectional.all(Radius.circular(15)),
              ),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    "Harry Botter and the Goplen of fire ",
                    style:
                        Styels.textStyle20.copyWith(fontFamily: kGtSectraFine),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  "J.k. ahmed ",
                  style: Styels.textStyle14,
                ),
                const SizedBox(
                  height: 7,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        r"$ 19.9",
                        style: Styels.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
