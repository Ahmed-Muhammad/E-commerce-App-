import 'package:flutter/material.dart';
import 'package:fruits_market_app/core/Widgets/space_widget.dart';
import 'package:fruits_market_app/core/utils/size_config.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.image})
      : super(key: key);
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(18),
        SizedBox(
            height: SizeConfig.defaultSize! * 20, child: Image.asset(image)),
        const VerticalSpace(2.5),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(1),
        Text(
          subtitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}
