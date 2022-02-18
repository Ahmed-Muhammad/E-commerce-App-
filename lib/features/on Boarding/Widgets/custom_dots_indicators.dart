import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market_app/core/constants.dart';

class CustomDotsIndicators extends StatelessWidget {
  const CustomDotsIndicators({Key? key, required this.dotIndex}) : super(key: key);
final double? dotIndex ;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        activeColor: kMainColor,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: kMainColor),
        ),
      ),
      dotsCount: 3,
      position: dotIndex!,
    );
  }
}
