import 'package:flutter/material.dart';
import 'package:kohilan_s_application1/core/app_export.dart';
import 'package:kohilan_s_application1/widgets/custom_button.dart';

import 'register_screen.dart';

class OnboardingScreen3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.red901,
            body: Container(
                width: size.width,
                child: Container(
                    height: size.height,
                    width: size.width,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(bottom: 8),
                              child: Image.asset(ImageConstant.imgAmudhiniepir,
                                  height: getVerticalSize(560.00),
                                  width: getHorizontalSize(320.00),
                                  fit: BoxFit.fill))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: getPadding(
                                  left: 144, top: 61, right: 144, bottom: 61),
                              child: Text("Done".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtFjordOne13.copyWith()))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              margin: getMargin(
                                  left: 38, top: 87, right: 38, bottom: 87),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: getMargin(left: 33, right: 33),
                                        decoration:
                                            AppDecoration.txtOutlineBlack9003f,
                                        child: Text("Welcome".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtFjordOne24
                                                .copyWith())),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: getHorizontalSize(244.00),
                                            decoration: AppDecoration
                                                .txtOutlineBlack9003f,
                                            child: Text(
                                                "The best things in the life are not things, they are moments"
                                                    .tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsRegular15
                                                    .copyWith())))
                                  ]))),
                      CustomButton(
                          width: 122,
                          text: "Done".tr,
                          margin: getMargin(
                              left: 99, top: 490, right: 99, bottom: 33),
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.RoundedBorder8,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.PoppinsRegular13,
                          onTap: () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => RegisterScreen())),
                          alignment: Alignment.bottomCenter)
                    ])))));
  }

  onTapBtnDone() {}
}
