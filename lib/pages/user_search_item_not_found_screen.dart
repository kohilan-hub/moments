import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';

class UserSearchItemNotFoundScreen
    extends GetWidget<UserSearchItemNotFoundController> {
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
                              height: getVerticalSize(56.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 90,
                                                top: 10,
                                                right: 90,
                                                bottom: 10),
                                            child: Text("lbl_v".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtFjordOne13WhiteA700
                                                    .copyWith()))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: size.width,
                                            margin: getMargin(top: 2),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.red900),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapImgArrowleft();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 3,
                                                              bottom: 5),
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
                                                  Text("lbl_colombo".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtVollkornRomanRegular20
                                                          .copyWith()),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 4, bottom: 6),
                                                      child: Container(
                                                          height:
                                                              getSize(17.00),
                                                          width: getSize(17.00),
                                                          child: SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgSearch17X17,
                                                              fit:
                                                                  BoxFit.fill)))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            margin: getMargin(bottom: 10),
                                            decoration:
                                                AppDecoration.fillRed901,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          decoration:
                                                              AppDecoration
                                                                  .fillBlack90063,
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 4,
                                                                        top: 1,
                                                                        bottom:
                                                                            2),
                                                                    child: Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 2),
                                                                              child: Container(height: getVerticalSize(11.00), width: getHorizontalSize(14.00), child: SvgPicture.asset(ImageConstant.imgSignal, fit: BoxFit.fill))),
                                                                          Padding(
                                                                              padding: getPadding(left: 3),
                                                                              child: Text("lbl_figma".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtAssistantRegular12.copyWith(height: 1.17))),
                                                                          Padding(
                                                                              padding: getPadding(left: 8, top: 1),
                                                                              child: Container(height: getVerticalSize(12.00), width: getHorizontalSize(13.00), child: SvgPicture.asset(ImageConstant.imgSignal12X13, fit: BoxFit.fill))),
                                                                          Padding(
                                                                              padding: getPadding(left: 67),
                                                                              child: Text("lbl_3_12_pm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAssistantRegular12.copyWith(height: 1.17)))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 2,
                                                                        right:
                                                                            4,
                                                                        bottom:
                                                                            1),
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            13.00),
                                                                        width: getHorizontalSize(
                                                                            22.00),
                                                                        child: SvgPicture.asset(
                                                                            ImageConstant
                                                                                .imgBattery,
                                                                            fit:
                                                                                BoxFit.fill)))
                                                              ])))
                                                ])))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 38, top: 12, right: 38),
                          child: Text("lbl_hgh".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  AppStyle.txtFjordOne13WhiteA700.copyWith())),
                      Padding(
                          padding: getPadding(left: 38, top: 159, right: 38),
                          child: Text("lbl_nothing_found".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16Black90099
                                  .copyWith())),
                      Padding(
                          padding: getPadding(left: 38, top: 1, right: 37),
                          child: Text("msg_your_serached_i".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular14Black90090
                                  .copyWith())),
                      Padding(
                          padding: getPadding(
                              left: 38, top: 192, right: 38, bottom: 20),
                          child: Text("lbl_next".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  AppStyle.txtFjordOne13WhiteA700.copyWith()))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
