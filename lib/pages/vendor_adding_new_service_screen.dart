import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';
import 'package:kohilan_s_application1/widgets/custom_button.dart';
import 'package:kohilan_s_application1/widgets/custom_icon_button.dart';

class VendorAddingNewServiceScreen
    extends GetWidget<VendorAddingNewServiceController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                margin: getMargin(bottom: 20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              decoration:
                                  BoxDecoration(color: ColorConstant.red900),
                              child: Container(
                                  margin: getMargin(bottom: 8),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(20.00),
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
                                                              height:
                                                                  getVerticalSize(
                                                                      20.00),
                                                              width: size.width,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topLeft,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(15.00),
                                                                            width: size.width,
                                                                            margin: getMargin(bottom: 10),
                                                                            decoration: BoxDecoration(color: ColorConstant.black90063))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                        child: Padding(
                                                                            padding: getPadding(left: 4, right: 4, bottom: 10),
                                                                            child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                              Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                                Padding(padding: getPadding(top: 2, bottom: 3), child: Container(height: getVerticalSize(9.00), width: getHorizontalSize(14.00), child: SvgPicture.asset(ImageConstant.imgSignal, fit: BoxFit.fill))),
                                                                                Padding(padding: getPadding(left: 3, bottom: 2), child: Text("lbl_figma".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtAssistantRegular12.copyWith(height: 1.17))),
                                                                                Padding(padding: getPadding(left: 8, top: 1, bottom: 3), child: Container(height: getVerticalSize(10.00), width: getHorizontalSize(13.00), child: SvgPicture.asset(ImageConstant.imgSignal12X13, fit: BoxFit.fill))),
                                                                                Padding(padding: getPadding(left: 67, top: 1), child: Text("lbl_3_12_pm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAssistantRegular12.copyWith(height: 1.17)))
                                                                              ]),
                                                                              Padding(padding: getPadding(left: 113, top: 3, bottom: 2), child: Container(height: getVerticalSize(9.00), width: getHorizontalSize(22.00), child: SvgPicture.asset(ImageConstant.imgBattery, fit: BoxFit.fill)))
                                                                            ])))
                                                                  ])))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapImgArrowleft();
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 18,
                                                        top: 5,
                                                        right: 18),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            19.00),
                                                        width:
                                                            getHorizontalSize(
                                                                11.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgArrowleftWhiteA700,
                                                            fit:
                                                                BoxFit.fill)))))
                                      ])))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(left: 10, top: 10),
                              child: Container(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                    Padding(
                                        padding: getPadding(left: 2, right: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("lbl_add_service2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium18
                                                      .copyWith()),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 140,
                                                      top: 4,
                                                      bottom: 3),
                                                  child: Container(
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgClose,
                                                          fit: BoxFit.fill)))
                                            ])),
                                    Container(
                                        width: getHorizontalSize(268.00),
                                        margin: getMargin(
                                            left: 2, top: 5, right: 10),
                                        child: Text("msg_to_start_adding".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular14Gray700
                                                .copyWith())),
                                    Container(
                                        margin: getMargin(
                                            left: 2, top: 18, right: 10),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_name2".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(16),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              TextSpan(
                                                  text: "lbl".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .deepOrange600,
                                                      fontSize: getFontSize(16),
                                                      fontFamily: 'Mulish',
                                                      fontWeight:
                                                          FontWeight.w600))
                                            ]),
                                            textAlign: TextAlign.left)),
                                    Container(
                                        width: double.infinity,
                                        margin: getMargin(left: 2, right: 10),
                                        decoration: AppDecoration.outlineGray400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder3),
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
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 21,
                                                          top: 18,
                                                          right: 21,
                                                          bottom: 14),
                                                      child: Text(
                                                          "msg_enter_your_bran"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular16Gray400
                                                              .copyWith())))
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: getVerticalSize(642.00),
                                            width: getHorizontalSize(301.00),
                                            margin: getMargin(left: 1, top: 14),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 1,
                                                              top: 144,
                                                              right: 10,
                                                              bottom: 144),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    margin: getMargin(
                                                                        right:
                                                                            10),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "lbl_price2".tr,
                                                                              style: TextStyle(color: ColorConstant.black902, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                                                                          TextSpan(
                                                                              text: "lbl".tr,
                                                                              style: TextStyle(color: ColorConstant.deepOrange600, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                        ]),
                                                                        textAlign: TextAlign.left)),
                                                                Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration: AppDecoration
                                                                        .outlineGray400
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder3),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(padding: getPadding(left: 21, top: 18, right: 21, bottom: 14), child: Text("msg_enter_the_price".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16Gray400.copyWith())))
                                                                        ]))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  326.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  301.00),
                                                          margin: getMargin(
                                                              bottom: 10),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Container(
                                                                        margin: getMargin(left: 1, top: 23, right: 10, bottom: 23),
                                                                        decoration: AppDecoration.outlineGray400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                                                                        child: Row(crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.max, children: [
                                                                          Padding(
                                                                              padding: getPadding(left: 21, top: 18, bottom: 14),
                                                                              child: Text("msg_select_your_cat".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16Gray400.copyWith())),
                                                                          Padding(
                                                                              padding: getPadding(left: 43, top: 33, right: 19, bottom: 13),
                                                                              child: Container(height: getVerticalSize(10.00), width: getHorizontalSize(15.00), child: SvgPicture.asset(ImageConstant.imgArrowdown, fit: BoxFit.fill)))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Container(
                                                                        margin: getMargin(right: 10, bottom: 10),
                                                                        child: RichText(
                                                                            text: TextSpan(children: [
                                                                              TextSpan(text: "lbl_category2".tr, style: TextStyle(color: ColorConstant.black902, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                                                                              TextSpan(text: "lbl".tr, style: TextStyle(color: ColorConstant.deepOrange600, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                            ]),
                                                                            textAlign: TextAlign.left)))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  334.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  301.00),
                                                          margin: getMargin(
                                                              top: 90,
                                                              bottom: 90),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Container(
                                                                        margin: getMargin(left: 1, top: 23, right: 10, bottom: 23),
                                                                        decoration: AppDecoration.outlineGray400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(padding: getPadding(left: 21, top: 18, right: 21, bottom: 14), child: Text("msg_enter_your_addr".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16Gray400.copyWith())))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Container(
                                                                        margin: getMargin(right: 10, bottom: 10),
                                                                        child: RichText(
                                                                            text: TextSpan(children: [
                                                                              TextSpan(text: "lbl_address2".tr, style: TextStyle(color: ColorConstant.black902, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                                                                              TextSpan(text: "lbl".tr, style: TextStyle(color: ColorConstant.deepOrange600, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                            ]),
                                                                            textAlign: TextAlign.left)))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  339.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  301.00),
                                                          margin: getMargin(
                                                              top: 121,
                                                              bottom: 121),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Container(
                                                                        margin: getMargin(left: 1, top: 23, right: 10, bottom: 23),
                                                                        decoration: AppDecoration.outlineGray400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(padding: getPadding(left: 21, top: 18, right: 21), child: Text("msg_select_your_dis".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16Gray400.copyWith()))),
                                                                          Align(
                                                                              alignment: Alignment.centerRight,
                                                                              child: Padding(padding: getPadding(left: 27, top: 2, right: 27, bottom: 2), child: Container(height: getVerticalSize(10.00), width: getHorizontalSize(15.00), child: SvgPicture.asset(ImageConstant.imgArrowdown, fit: BoxFit.fill))))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Container(
                                                                        margin: getMargin(right: 10, bottom: 10),
                                                                        child: RichText(
                                                                            text: TextSpan(children: [
                                                                              TextSpan(text: "lbl_district2".tr, style: TextStyle(color: ColorConstant.black902, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                                                                              TextSpan(text: "lbl".tr, style: TextStyle(color: ColorConstant.deepOrange600, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                            ]),
                                                                            textAlign: TextAlign.left)))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Container(
                                                          margin: getMargin(
                                                              top: 20,
                                                              bottom: 20),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    height: getVerticalSize(
                                                                        135.00),
                                                                    width: getHorizontalSize(
                                                                        267.00),
                                                                    margin: getMargin(
                                                                        right:
                                                                            10),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.bottomCenter,
                                                                              child: Container(
                                                                                  margin: getMargin(left: 1, top: 10),
                                                                                  decoration: AppDecoration.outlineGray400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 21, top: 18, right: 21, bottom: 70), child: Text("msg_tell_about_your".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16Gray400.copyWith())))
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.topLeft,
                                                                              child: Padding(padding: getPadding(right: 10, bottom: 10), child: Text("lbl_description".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16Black902.copyWith())))
                                                                        ])),
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        217.00),
                                                                    margin: getMargin(
                                                                        top:
                                                                            103,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            58),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "msg_drop_images_her2".tr,
                                                                              style: TextStyle(color: ColorConstant.black902, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                                                                          TextSpan(
                                                                              text: "msg_tap_below_boxes".tr,
                                                                              style: TextStyle(color: ColorConstant.red901, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                        ]),
                                                                        textAlign: TextAlign.left))
                                                              ]))),
                                                  CustomIconButton(
                                                      height: 76,
                                                      width: 76,
                                                      margin: getMargin(
                                                          left: 8,
                                                          top: 10,
                                                          right: 10),
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgGroup251)),
                                                  CustomIconButton(
                                                      height: 76,
                                                      width: 76,
                                                      margin: getMargin(
                                                          left: 103,
                                                          top: 10,
                                                          right: 103),
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgGroup251)),
                                                  CustomIconButton(
                                                      height: 76,
                                                      width: 76,
                                                      margin: getMargin(
                                                          left: 27,
                                                          top: 10,
                                                          right: 27),
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgGroup251))
                                                ]))),
                                    Container(
                                        width: getHorizontalSize(285.00),
                                        margin: getMargin(top: 7, right: 10),
                                        child: Text("msg_use_quality_pic".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular16Gray700
                                                .copyWith())),
                                    CustomButton(
                                        width: 263,
                                        text: "lbl_save".tr,
                                        margin: getMargin(
                                            left: 11, top: 17, right: 11),
                                        padding: ButtonPadding.PaddingAll14,
                                        fontStyle:
                                            ButtonFontStyle.PoppinsMedium18,
                                        onTap: onTapBtnSave)
                                  ]))))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnSave() {
    Get.toNamed(AppRoutes.vendorHomeScreenWithServicesScreen);
  }
}
