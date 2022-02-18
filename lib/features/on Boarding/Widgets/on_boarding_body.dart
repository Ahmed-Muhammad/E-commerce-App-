import 'package:flutter/material.dart';
import 'package:fruits_market_app/core/Widgets/custom_buttons.dart';
import 'package:fruits_market_app/core/utils/size_config.dart';
import 'package:fruits_market_app/features/Auth/presentation/pages/login/login_view.dart';
import 'package:fruits_market_app/features/on%20Boarding/Widgets/custom_dots_indicators.dart';
import 'package:fruits_market_app/features/on%20Boarding/Widgets/custom_page_view.dart';
import 'package:get/get.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? onBoardingPageController;

  @override
  void initState() {
    onBoardingPageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageViewController: onBoardingPageController!,
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: SizeConfig.defaultSize! * 22,
            child: CustomDotsIndicators(
              dotIndex: onBoardingPageController!.hasClients
                  ? onBoardingPageController?.page
                  : 0,
            )),
        Visibility(
          visible: onBoardingPageController!.hasClients
              ? onBoardingPageController?.page == 2
                  ? false
                  : true
              : false,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (onBoardingPageController?.page == 0 ||
                      onBoardingPageController?.page == 1) {
                    onBoardingPageController?.jumpToPage(2);
                  } else {
                    onBoardingPageController?.keepPage;
                  }
                });
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xff898989),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            onTap: () {
              if (onBoardingPageController!.page! < 2) {
                onBoardingPageController?.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInCirc);
              } else {
                Get.to(() => const LoginView(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500));
              }
            },
            text: onBoardingPageController!.hasClients
                ? onBoardingPageController?.page == 2
                    ? "Get Stated"
                    : "Next"
                : "Next",
          ),
        ),
      ],
    );
  }
}
