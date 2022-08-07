import 'package:flutter/material.dart';
import 'package:kohilan_s_application1/core/app_export.dart';
import 'package:kohilan_s_application1/widgets/custom_button.dart';

import 'choose_role_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.red901,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Container(
                          height: getVerticalSize(340.00),
                          width: size.width,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        height: getVerticalSize(171.00),
                                        width: getHorizontalSize(105.00),
                                        margin:
                                            getMargin(right: 10, bottom: 10),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.red900,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(85.50)),
                                            boxShadow: [
                                              BoxShadow(
                                                  color:
                                                      ColorConstant.black9003f,
                                                  spreadRadius:
                                                      getHorizontalSize(2.00),
                                                  blurRadius:
                                                      getHorizontalSize(2.00),
                                                  offset: Offset(0, 4))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: getVerticalSize(263.00),
                                        width: getHorizontalSize(122.00),
                                        margin: getMargin(left: 10, top: 10),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.red900,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(131.50)),
                                            boxShadow: [
                                              BoxShadow(
                                                  color:
                                                      ColorConstant.black9003f,
                                                  spreadRadius:
                                                      getHorizontalSize(2.00),
                                                  blurRadius:
                                                      getHorizontalSize(2.00),
                                                  offset: Offset(0, 4))
                                            ]))),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 20,
                                            top: 17,
                                            right: 20,
                                            bottom: 17),
                                        child: Text("Lets do our fantasy...",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtVollkornRomanBold25
                                                .copyWith()))),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        width: getHorizontalSize(285.00),
                                        margin: getMargin(
                                            left: 17,
                                            top: 53,
                                            right: 17,
                                            bottom: 53),
                                        child: Text(
                                            "Moments  Offering wedding planning, styling and catering all under one roof.",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular12WhiteA700
                                                .copyWith())))
                              ])),
                      Container(
                          width: double.infinity,
                          margin: getMargin(top: 40),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL50),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    width: 177,
                                    text: "Register with us",
                                    margin:
                                        getMargin(left: 49, top: 52, right: 49),
                                    shape: ButtonShape.CircleBorder17,
                                    fontStyle: ButtonFontStyle.PoppinsRegular14,
                                    onTap: () => Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                            builder: (_) =>
                                                ChooseRoleScreen()))),
                                GestureDetector(
                                    child: Container(
                                        margin: getMargin(
                                            left: 49,
                                            top: 24,
                                            right: 49,
                                            bottom: 20),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "Already have an account?",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              TextSpan(
                                                  text: "Login",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.red901,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400))
                                            ]),
                                            textAlign: TextAlign.center)))
                              ]))
                    ]))))));
  }

  onTapBtnRegisterwithu() {}

  onTapTxtAlreadyhavean2() {}
}
