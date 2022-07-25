import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';

class VendorHomeScreen extends GetWidget<VendorHomeController> {
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
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 8,
                                                    right: 15),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text("lbl_services".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtVollkornRomanRegular18
                                                              .copyWith()),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 92,
                                                              top: 1,
                                                              bottom: 4),
                                                          child: Container(
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00),
                                                              child: SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgUser20X20,
                                                                  fit: BoxFit
                                                                      .fill)))
                                                    ])))
                                      ])))),
                      GestureDetector(
                          onTap: () {
                            onTapRowplus();
                          },
                          child: Container(
                              margin: getMargin(
                                  left: 82, top: 207, right: 80, bottom: 261),
                              decoration: AppDecoration.fillRed901.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 13, bottom: 13),
                                        child: Container(
                                            height: getSize(20.00),
                                            width: getSize(20.00),
                                            child: SvgPicture.asset(
                                                ImageConstant.imgPlus10X10,
                                                fit: BoxFit.fill))),
                                    Padding(
                                        padding: getPadding(
                                            left: 6,
                                            top: 13,
                                            right: 22,
                                            bottom: 13),
                                        child: Text("lbl_add_service".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMulishSemiBold16WhiteA700
                                                .copyWith()))
                                  ])))
                    ]))))));
  }

  onTapRowplus() {
    Get.toNamed(AppRoutes.vendorAddingNewServiceScreen);
  }
}