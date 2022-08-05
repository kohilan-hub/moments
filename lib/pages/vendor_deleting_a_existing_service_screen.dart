
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';
import 'package:kohilan_s_application1/widgets/custom_button.dart';

class VendorDeletingAExistingServiceScreen
    extends GetWidget<VendorDeletingAExistingServiceController> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: ColorConstant.red900,
                    ),
                    child: Container(
                      margin: getMargin(
                        bottom: 6,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: getVerticalSize(
                                15.00,
                              ),
                              width: size.width,
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      height: getVerticalSize(
                                        14.00,
                                      ),
                                      width: size.width,
                                      margin: getMargin(
                                        bottom: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.red901,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      decoration: AppDecoration.fillBlack90063,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 4,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 2,
                                                    bottom: 1,
                                                  ),
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      10.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      14.00,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      ImageConstant.imgSignal,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 3,
                                                  ),
                                                  child: Text(
                                                    "lbl_figma".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtAssistantRegular12
                                                        .copyWith(
                                                      height: 1.17,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 8,
                                                    top: 1,
                                                    bottom: 1,
                                                  ),
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      11.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      13.00,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      ImageConstant
                                                          .imgSignal12X13,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 67,
                                                  ),
                                                  child: Text(
                                                    "lbl_3_12_pm".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtAssistantRegular12
                                                        .copyWith(
                                                      height: 1.17,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 112,
                                              top: 2,
                                              right: 4,
                                              bottom: 1,
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                11.00,
                                              ),
                                              width: getHorizontalSize(
                                                22.00,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgBattery,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 12,
                              top: 8,
                              right: 12,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      margin: getMargin(
                                        bottom: 4,
                                      ),
                                      decoration:
                                          AppDecoration.fillRed800.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 6,
                                              top: 4,
                                              bottom: 5,
                                            ),
                                            child: Container(
                                              height: getSize(
                                                12.00,
                                              ),
                                              width: getSize(
                                                12.00,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgPlus,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 3,
                                              top: 1,
                                              right: 4,
                                              bottom: 2,
                                            ),
                                            child: Text(
                                              "lbl_add".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12WhiteA700
                                                  .copyWith(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 65,
                                      ),
                                      child: Text(
                                        "lbl_services".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtVollkornRomanRegular18
                                            .copyWith(),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    bottom: 4,
                                  ),
                                  child: Container(
                                    height: getSize(
                                      20.00,
                                    ),
                                    width: getSize(
                                      20.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgUser,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      514.00,
                    ),
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: getMargin(
                              left: 19,
                              top: 12,
                              right: 19,
                              bottom: 12,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  decoration:
                                      AppDecoration.fillGray101.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 6,
                                          top: 6,
                                          bottom: 6,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              10.00,
                                            ),
                                          ),
                                          child: Image.asset(
                                            ImageConstant.imgUnsplash3rzd6k,
                                            height: getSize(
                                              100.00,
                                            ),
                                            width: getSize(
                                              100.00,
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          left: 8,
                                          right: 19,
                                          bottom: 6,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                left: 3,
                                                right: 10,
                                              ),
                                              child: Text(
                                                "msg_zintrella_makeu".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular16
                                                    .copyWith(),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                margin: getMargin(
                                                  left: 3,
                                                ),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            "lbl_category3".tr,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .deepOrange600,
                                                          fontSize: getFontSize(
                                                            12,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            "lbl_makeup_artist"
                                                                .tr,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .deepOrange600,
                                                          fontSize: getFontSize(
                                                            12,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                width: getHorizontalSize(
                                                  147.00,
                                                ),
                                                margin: getMargin(
                                                  top: 34,
                                                  right: 1,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    CustomButton(
                                                      width: 63,
                                                      text: "lbl_edit".tr,
                                                      variant: ButtonVariant
                                                          .FillGray301,
                                                      fontStyle: ButtonFontStyle
                                                          .MulishSemiBold16Black902,
                                                    ),
                                                    CustomButton(
                                                      width: 71,
                                                      text: "lbl_delete".tr,
                                                      variant: ButtonVariant
                                                          .FillDeeporange6002b,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 18,
                                  ),
                                  decoration:
                                      AppDecoration.fillGray101.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 6,
                                          bottom: 6,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              10.00,
                                            ),
                                          ),
                                          child: Image.asset(
                                            ImageConstant
                                                .imgUnsplash3rzd6k100X100,
                                            height: getSize(
                                              100.00,
                                            ),
                                            width: getSize(
                                              100.00,
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          bottom: 6,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 3,
                                                ),
                                                child: Text(
                                                  "msg_acthu_pappa_cak".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular16
                                                      .copyWith(),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 3,
                                                right: 10,
                                              ),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "lbl_category3".tr,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .deepOrange600,
                                                        fontSize: getFontSize(
                                                          12,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: "lbl_cake".tr,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .deepOrange600,
                                                        fontSize: getFontSize(
                                                          12,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 34,
                                                right: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    decoration: AppDecoration
                                                        .fillGray301
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder3,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 17,
                                                            top: 5,
                                                            right: 17,
                                                            bottom: 5,
                                                          ),
                                                          child: Text(
                                                            "lbl_edit".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMulishSemiBold16
                                                                .copyWith(),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(
                                                      left: 13,
                                                    ),
                                                    decoration: AppDecoration
                                                        .fillDeeporange6002b
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder3,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 12,
                                                            top: 5,
                                                            right: 11,
                                                            bottom: 5,
                                                          ),
                                                          child: Text(
                                                            "lbl_delete".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMulishSemiBold16
                                                                .copyWith(),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: getHorizontalSize(
                                    267.00,
                                  ),
                                  margin: getMargin(
                                    left: 8,
                                    top: 18,
                                    right: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray401,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: getMargin(
                                      left: 62,
                                      top: 17,
                                      right: 61,
                                    ),
                                    decoration:
                                        AppDecoration.fillRed901.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 13,
                                            bottom: 13,
                                          ),
                                          child: Container(
                                            height: getSize(
                                              20.00,
                                            ),
                                            width: getSize(
                                              20.00,
                                            ),
                                            child: SvgPicture.asset(
                                              ImageConstant.imgPlus,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 6,
                                            top: 13,
                                            bottom: 13,
                                          ),
                                          child: Text(
                                            "lbl_add_service".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMulishSemiBold16WhiteA700
                                                .copyWith(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: AppDecoration.fillGray80060,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    120.00,
                                  ),
                                  width: getHorizontalSize(
                                    281.00,
                                  ),
                                  margin: getMargin(
                                    left: 20,
                                    top: 170,
                                    right: 19,
                                    bottom: 224,
                                  ),
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.gray101,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: ColorConstant.red900,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          10.00,
                                        ),
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            width: getHorizontalSize(
                                              132.00,
                                            ),
                                            margin: getMargin(
                                              left: 74,
                                              top: 5,
                                              right: 74,
                                              bottom: 10,
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "lbl_are_you_sure".tr,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(
                                                        16,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "lbl_deleting".tr,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.red901,
                                                      fontSize: getFontSize(
                                                        16,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "msg_zintrella_makeu"
                                                        .tr,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(
                                                        16,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                        CustomButton(
                                          width: 71,
                                          text: "lbl_no".tr,
                                          margin: getMargin(
                                            left: 34,
                                            top: 10,
                                            right: 34,
                                            bottom: 7,
                                          ),
                                          variant: ButtonVariant.FillGray301,
                                          alignment: Alignment.bottomRight,
                                        ),
                                        CustomButton(
                                          width: 71,
                                          text: "lbl_yes".tr,
                                          margin: getMargin(
                                            left: 35,
                                            top: 10,
                                            right: 35,
                                            bottom: 7,
                                          ),
                                          variant:
                                              ButtonVariant.FillDeeporange6002b,
                                          alignment: Alignment.bottomLeft,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
