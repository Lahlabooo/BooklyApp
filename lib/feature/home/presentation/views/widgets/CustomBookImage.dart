import 'package:bookly/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CusstomBookImage extends StatelessWidget {
  const CusstomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .25),
      child: AspectRatio(
        aspectRatio: .7,
        child: Container(
          //width: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetData.testImage), fit: BoxFit.fill),
            borderRadius: BorderRadiusDirectional.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
