import 'package:flutter/material.dart';
import 'package:fruits_market_app/core/utils/size_config.dart';

class HorizintalSpace extends StatelessWidget {
  const HorizintalSpace(this.value, {Key? key}) : super(key: key);
  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}
class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value, {Key? key}) : super(key: key);
  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}
