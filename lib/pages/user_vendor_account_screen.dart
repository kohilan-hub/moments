import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';
import 'package:kohilan_s_application1/widgets/custom_button.dart';

class UserVendorAccountScreen extends GetWidget<UserVendorAccountController> {
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              decoration:
                                  BoxDecoration(color: ColorConstant.red900),
                              child: Container(
                                  margin: getMargin(bottom: 6),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(15.00),
                                                width: size.width,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      14.00),
                                                              width: size.width,
                                                              margin: getMargin(
                                                                  bottom: 10),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .red901))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillBlack90063,
                                                              child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                4),
                                                                        child: Row(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            mainAxisSize: MainAxisSize.max,
                                                                            children: [
                                                                              Padding(padding: getPadding(top: 2, bottom: 1), child: Container(height: getVerticalSize(10.00), width: getHorizontalSize(14.00), child: SvgPicture.asset(ImageConstant.imgSignal, fit: BoxFit.fill))),
                                                                              Padding(padding: getPadding(left: 3), child: Text("lbl_figma".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtAssistantRegular12.copyWith(height: 1.17))),
                                                                              Padding(padding: getPadding(left: 8, top: 1, bottom: 1), child: Container(height: getVerticalSize(11.00), width: getHorizontalSize(13.00), child: SvgPicture.asset(ImageConstant.imgSignal12X13, fit: BoxFit.fill))),
                                                                              Padding(padding: getPadding(left: 67), child: Text("lbl_3_12_pm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAssistantRegular12.copyWith(height: 1.17)))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                112,
                                                                            top:
                                                                                2,
                                                                            right:
                                                                                4,
                                                                            bottom:
                                                                                1),
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(11.00),
                                                                            width: getHorizontalSize(22.00),
                                                                            child: SvgPicture.asset(ImageConstant.imgBattery, fit: BoxFit.fill)))
                                                                  ])))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 18,
                                                    top: 8,
                                                    right: 18),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapImgArrowleft();
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 3,
                                                                      bottom:
                                                                          2),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          19.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          11.00),
                                                                  child: SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgArrowleftWhiteA700,
                                                                      fit: BoxFit
                                                                          .fill)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 96),
                                                          child: Text(
                                                              "lbl_account".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtVollkornRomanRegular18
                                                                  .copyWith()))
                                                    ])))
                                      ])))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(left: 12, top: 19, right: 12),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_na".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.16,
                                            height: 1.56)),
                                    TextSpan(
                                        text: "lbl_m".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 1.56)),
                                    TextSpan(
                                        text: "lbl_e".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.16,
                                            height: 1.56))
                                  ]),
                                  textAlign: TextAlign.center))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 12, right: 12),
                              decoration: AppDecoration.outlineBluegray100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 12,
                                                top: 10,
                                                right: 12,
                                                bottom: 10),
                                            child: Text("lbl_naresh".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsRegular16Gray700
                                                    .copyWith(
                                                        letterSpacing: 0.16,
                                                        height: 1.56))))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(left: 12, top: 32, right: 12),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_email_add".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.16,
                                            height: 0.03)),
                                    TextSpan(
                                        text: "lbl_r".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0.03)),
                                    TextSpan(
                                        text: "lbl_ess".tr,
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.16,
                                            height: 0.03))
                                  ]),
                                  textAlign: TextAlign.center))),
                      CustomButton(
                          width: 281,
                          text: "msg_nareshannapulut".tr,
                          margin: getMargin(left: 12, top: 24, right: 12),
                          variant: ButtonVariant.OutlineBluegray100,
                          padding: ButtonPadding.PaddingAll10,
                          fontStyle: ButtonFontStyle.PoppinsRegular16,
                          alignment: Alignment.centerLeft),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 12, top: 32, right: 12),
                              child: Text("lbl_phone_number".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsRegular16.copyWith(
                                      letterSpacing: 0.16, height: 1.56)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 12, right: 12),
                              decoration: AppDecoration.outlineBluegray100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 12,
                                                top: 10,
                                                right: 12,
                                                bottom: 10),
                                            child: Text("lbl_94772129653".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsRegular16Gray700
                                                    .copyWith(
                                                        letterSpacing: 0.16,
                                                        height: 1.56))))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(267.00),
                          margin: getMargin(left: 12, top: 50, right: 12),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray401)),
                      CustomButton(
                          width: 158,
                          text: "lbl_log_out".tr,
                          margin: getMargin(
                              left: 12, top: 49, right: 12, bottom: 20),
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.MulishSemiBold16,
                          onTap: onTapBtnLogout,
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnLogout() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
