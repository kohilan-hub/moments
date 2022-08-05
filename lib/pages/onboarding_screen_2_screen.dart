import 'package:flutter/material.dart';
import 'package:kohilan_s_application1/core/app_export.dart';
import 'package:kohilan_s_application1/widgets/custom_button.dart';

class OnboardingScreen2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.red901,
            body: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: double.infinity,
                          decoration: AppDecoration.outlineRed900,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(171.00),
                                        width: getHorizontalSize(99.00),
                                        margin: getMargin(right: 10),
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
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(368.00),
                                        width: getHorizontalSize(255.00),
                                        margin: getMargin(left: 10, top: 42),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          263.00),
                                                      width: getHorizontalSize(
                                                          99.00),
                                                      margin: getMargin(
                                                          left: 10, top: 10),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .red900,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      131.50)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                                color: ColorConstant
                                                                    .black9003f,
                                                                spreadRadius:
                                                                    getHorizontalSize(
                                                                        2.00),
                                                                blurRadius:
                                                                    getHorizontalSize(
                                                                        2.00),
                                                                offset: Offset(
                                                                    0, 4))
                                                          ]))),
                                              // CustomButton(
                                              //     width: 122,
                                              //     text: "Next",
                                              //     margin: getMargin(
                                              //         left: 34,
                                              //         top: 60,
                                              //         right: 34,
                                              //         bottom: 60),
                                              //     variant: ButtonVariant
                                              //         .FillWhiteA700,
                                              //     shape: ButtonShape
                                              //         .RoundedBorder8,
                                              //     padding: ButtonPadding
                                              //         .PaddingAll14,
                                              //     fontStyle: ButtonFontStyle
                                              //         .PoppinsRegular13,
                                              //     onTap: onTapBtnNext,
                                              //     alignment:
                                              //         Alignment.bottomLeft),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      margin: getMargin(
                                                          right: 10,
                                                          bottom: 10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            173.00),
                                                                        width: getHorizontalSize(
                                                                            205.00),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.bottomRight,
                                                                            children: [
                                                                              // Container(height: getVerticalSize(94.00), width: getHorizontalSize(5.00), margin: getMargin(left: 14, top: 10, right: 14), decoration: BoxDecoration(color: ColorConstant.gray300)),
                                                                              // Container(height: getVerticalSize(149.00), width: getHorizontalSize(5.00), margin: getMargin(left: 10, top: 10, right: 2), decoration: BoxDecoration(color: ColorConstant.whiteA700)),
                                                                              // Container(height: getVerticalSize(5.00), width: getHorizontalSize(131.00), margin: getMargin(left: 10, top: 24, right: 4, bottom: 24), decoration: BoxDecoration(color: ColorConstant.whiteA700)),
                                                                              Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Container(
                                                                                      width: getHorizontalSize(205.00),
                                                                                      margin: getMargin(bottom: 4),
                                                                                      child: RichText(
                                                                                          text: TextSpan(children: [
                                                                                            TextSpan(text: "W", style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(64), fontFamily: 'Fjord', fontWeight: FontWeight.w400)),
                                                                                            TextSpan(text: "e will plan", style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(24), fontFamily: 'Fjord', fontWeight: FontWeight.w400)),
                                                                                            TextSpan(text: ' ', style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(24), fontFamily: 'Fjord', fontWeight: FontWeight.w400)),
                                                                                            TextSpan(text: "your wedding", style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(24), fontFamily: 'Fjord', fontWeight: FontWeight.w400)),
                                                                                            TextSpan(text: ' ', style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(24), fontFamily: 'Fjord', fontWeight: FontWeight.w400)),
                                                                                            TextSpan(text: "of your dream".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(24), fontFamily: 'Fjord', fontWeight: FontWeight.w400))
                                                                                          ]),
                                                                                          textAlign: TextAlign.left)))
                                                                            ]))),
                                                            // Container(
                                                            //     height:
                                                            //         getVerticalSize(
                                                            //             5.00),
                                                            //     width:
                                                            //         getHorizontalSize(
                                                            //             180.00),
                                                            //     margin:
                                                            //         getMargin(
                                                            //             left:
                                                            //                 18,
                                                            //             right:
                                                            //                 7),
                                                            //     decoration:
                                                            //         BoxDecoration(
                                                            //             color: ColorConstant
                                                            //                 .gray100))
                                                          ])))
                                            ])))
                              ])))
                ]))));
  }

  onTapBtnNext() {}
}
