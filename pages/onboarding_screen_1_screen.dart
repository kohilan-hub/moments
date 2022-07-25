import 'package:flutter/material.dart';
import 'package:kohilan_s_application1/core/app_export.dart';
import 'package:kohilan_s_application1/widgets/custom_button.dart';

class OnboardingScreen1Screen extends GetWidget<OnboardingScreen1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Container(
                          margin: getMargin(left: 94, top: 249, right: 94),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_m2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.red901,
                                        fontSize: getFontSize(35),
                                        fontFamily: 'KyivType Sans',
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: "lbl_oments".tr,
                                    style: TextStyle(
                                        color: ColorConstant.red901,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'KyivType Sans',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.center)),
                      Padding(
                          padding: getPadding(left: 94, right: 94),
                          child: Image.asset(ImageConstant.imgIcons8ringsid,
                              height: getSize(50.00),
                              width: getSize(50.00),
                              fit: BoxFit.fill)),
                      CustomButton(
                          width: 122,
                          text: "lbl_next".tr,
                          margin: getMargin(
                              left: 94, top: 137, right: 94, bottom: 20),
                          shape: ButtonShape.RoundedBorder8,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.PoppinsRegular13WhiteA700,
                          onTap: onTapBtnNext)
                    ]))))));
  }

  onTapBtnNext() {
    Get.toNamed(AppRoutes.onboardingScreen2Screen);
  }
}
