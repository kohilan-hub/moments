
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';

class ChooseRoleScreen extends GetWidget<ChooseRoleController> {
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(54.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 11,
                                                top: 15,
                                                right: 11,
                                                bottom: 15),
                                            child: Image.asset(
                                                ImageConstant.imgIcons8back24,
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                fit: BoxFit.fill))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: size.width,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.red900),
                                            child: Container(
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  15.00),
                                                          width: size.width,
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            14.00),
                                                                        width: size
                                                                            .width,
                                                                        margin: getMargin(
                                                                            top:
                                                                                10),
                                                                        decoration:
                                                                            BoxDecoration(color: ColorConstant.red901))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        decoration: AppDecoration.fillBlack90063,
                                                                        child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                          Padding(
                                                                              padding: getPadding(left: 4),
                                                                              child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                Padding(padding: getPadding(top: 2, bottom: 1), child: Container(height: getVerticalSize(10.00), width: getHorizontalSize(14.00), child: SvgPicture.asset(ImageConstant.imgSignal, fit: BoxFit.fill))),
                                                                                Padding(padding: getPadding(left: 3), child: Text("lbl_figma".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtAssistantRegular12.copyWith(height: 1.17))),
                                                                                Padding(padding: getPadding(left: 8, top: 1, bottom: 1), child: Container(height: getVerticalSize(11.00), width: getHorizontalSize(13.00), child: SvgPicture.asset(ImageConstant.imgSignal12X13, fit: BoxFit.fill))),
                                                                                Padding(padding: getPadding(left: 67), child: Text("lbl_3_12_pm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAssistantRegular12.copyWith(height: 1.17)))
                                                                              ])),
                                                                          Padding(
                                                                              padding: getPadding(left: 112, top: 2, right: 4, bottom: 1),
                                                                              child: Container(height: getVerticalSize(11.00), width: getHorizontalSize(22.00), child: SvgPicture.asset(ImageConstant.imgBattery, fit: BoxFit.fill)))
                                                                        ])))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 11,
                                                              top: 12,
                                                              right: 11),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgIcons8back50,
                                                              height: getSize(
                                                                  15.00),
                                                              width: getSize(
                                                                  15.00),
                                                              fit:
                                                                  BoxFit.fill)))
                                                ]))))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 83, top: 17, right: 83),
                          child: Text("msg_choose_your_rol".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtVollkornRomanRegular20Red901
                                  .copyWith())),
                      GestureDetector(
                          onTap: () {
                            onTapRowvendors();
                          },
                          child: Container(
                              margin: getMargin(left: 83, top: 72, right: 83),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 42, top: 21, bottom: 21),
                                        child: Text("lbl_vendors".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtPoppinsRegular14WhiteA700
                                                .copyWith())),
                                    Padding(
                                        padding: getPadding(
                                            left: 13,
                                            top: 23,
                                            right: 5,
                                            bottom: 22),
                                        child: Container(
                                            height: getVerticalSize(18.00),
                                            width: getHorizontalSize(21.00),
                                            child: SvgPicture.asset(
                                                ImageConstant.imgSettings,
                                                fit: BoxFit.fill)))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapRowusers();
                          },
                          child: Container(
                              margin: getMargin(
                                  left: 83, top: 117, right: 83, bottom: 154),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 52, top: 21, bottom: 21),
                                        child: Text("lbl_users".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtPoppinsRegular14WhiteA700
                                                .copyWith())),
                                    Container(
                                        height: getSize(16.00),
                                        width: getSize(16.00),
                                        margin: getMargin(
                                            left: 17,
                                            top: 24,
                                            right: 16,
                                            bottom: 23),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700))
                                  ])))
                    ]))))));
  }

  onTapRowvendors() {
    Get.toNamed(AppRoutes.signupScreen);
  }

  onTapRowusers() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}
