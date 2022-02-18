import 'package:flutter/material.dart';
import 'package:fruits_market_app/features/on%20Boarding/Widgets/page_view_items.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, required this.pageViewController}) : super(key: key);
final PageController pageViewController ;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller:pageViewController ,
      children: const [
        PageViewItems(
          image: "assets/images/onBoarding1.png",
          title: "E Shopping",
          subtitle: "Explore  top organic fruits & grab them",
        ),
        PageViewItems(
            image: "assets/images/onBoarding2.png",
            title: "Delivery on the way",
            subtitle: "Get your order by speed delivery"),
        PageViewItems(
          image: "assets/images/onBoarding3.png",
          title: "Delivery Arrived",
          subtitle: "Order is arrived at your Place",
        ),
      ],
    );
  }
}
