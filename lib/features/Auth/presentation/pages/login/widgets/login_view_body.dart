import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_market_app/core/Widgets/custom_buttons.dart';
import 'package:fruits_market_app/core/Widgets/space_widget.dart';
import 'package:fruits_market_app/core/utils/size_config.dart';
import 'package:fruits_market_app/features/Auth/presentation/pages/Complete_information/widgets/complete_information_body.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(10),
        SizedBox(
          height: SizeConfig.defaultSize! * 17,
          child: Image.asset("assets/images/market.png"),
        ),
        const VerticalSpace(3),
        const Text(
          'Fruit Market',
          style: TextStyle(
            color: Color(0xff69A03A),
            fontSize: 42,
            fontWeight: FontWeight.w900,
          ),
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButtonWithIcon(
                  text: "Login with",
                  onTap: () {
                    Get.to(const CompleteInformationBody(),
                        duration: const Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  iconData: FontAwesomeIcons.facebook,
                  color: Colors.blue,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButtonWithIcon(
                  text: "Login with",
                  onTap: () {},
                  iconData: FontAwesomeIcons.google,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
