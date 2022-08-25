import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/widgets/custom_button.dart';

import 'onboarding_screen_2_screen.dart';

class OnboardingScreen1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "M",
                                style: TextStyle(
                                    color: ColorConstant.red901,
                                    fontSize: getFontSize(35),
                                    fontFamily: 'KyivType Sans',
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "oments",
                                style: TextStyle(
                                    color: ColorConstant.red901,
                                    fontSize: getFontSize(25),
                                    fontFamily: 'KyivType Sans',
                                    fontWeight: FontWeight.w400))
                          ]),
                          textAlign: TextAlign.center),
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: SvgPicture.asset(
                          'assets/icons/ring.svg',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Center(
                    child: CustomButton(
                        width: 122,
                        text: "Next",
                        margin: EdgeInsets.only(bottom: 40),
                        shape: ButtonShape.RoundedBorder8,
                        padding: ButtonPadding.PaddingAll14,
                        fontStyle: ButtonFontStyle.PoppinsRegular13WhiteA700,
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => OnboardingScreen2Screen()))),
                  )
                ]))));
  }
}
