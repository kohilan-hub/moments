import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/widgets/custom_button.dart';
import 'package:moments/widgets/custom_icon_button.dart';

class VendorAddingNewServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
              actions: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: MaterialButton(
                    onPressed: null,
                    child: Icon(
                      Icons.close_rounded,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    shape: CircleBorder(
                        side: BorderSide(width: 3, color: Colors.white)),
                  ),
                ),
              ],
            ),
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Expanded(
                      child: SingleChildScrollView(
                          padding: getPadding(left: 10, top: 10),
                          child: Container(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                          Text("Add service",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsMedium18
                                                  .copyWith()),
                                        ])),
                                Container(
                                    width: getHorizontalSize(268.00),
                                    margin:
                                        getMargin(left: 2, top: 5, right: 10),
                                    child: Text(
                                        "To start adding any service, you need the name, category, price and picture",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular14Gray700
                                            .copyWith())),
                                Container(
                                    margin:
                                        getMargin(left: 2, top: 18, right: 10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Name",
                                              style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "*",
                                              style: TextStyle(
                                                  color: ColorConstant
                                                      .deepOrange600,
                                                  fontSize: getFontSize(16),
                                                  fontFamily: 'Mulish',
                                                  fontWeight: FontWeight.w600))
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
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 21,
                                                      top: 18,
                                                      right: 21,
                                                      bottom: 14),
                                                  child: Text(
                                                      "Enter Your Brand Name"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
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
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            10),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "Price".tr,
                                                                              style: TextStyle(color: ColorConstant.black902, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                                                                          TextSpan(
                                                                              text: "*".tr,
                                                                              style: TextStyle(color: ColorConstant.deepOrange600, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left)),
                                                            Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration: AppDecoration
                                                                    .outlineGray400
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder3),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .centerLeft,
                                                                          child: Padding(
                                                                              padding: getPadding(left: 21, top: 18, right: 21, bottom: 14),
                                                                              child: Text("Enter the price here".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16Gray400.copyWith())))
                                                                    ]))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          326.00),
                                                      width: getHorizontalSize(
                                                          301.00),
                                                      margin:
                                                          getMargin(bottom: 10),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            left:
                                                                                1,
                                                                            top:
                                                                                23,
                                                                            right:
                                                                                10,
                                                                            bottom:
                                                                                23),
                                                                        decoration: AppDecoration.outlineGray400.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder3),
                                                                        child: Row(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            mainAxisSize: MainAxisSize.max,
                                                                            children: [
                                                                              Padding(padding: getPadding(left: 21, top: 18, bottom: 14), child: Text("Select Your Category".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16Gray400.copyWith())),
                                                                              Padding(padding: getPadding(left: 43, top: 33, right: 19, bottom: 13), child: Container(height: getVerticalSize(10.00), width: getHorizontalSize(15.00), child: SvgPicture.asset(ImageConstant.imgArrowdown, fit: BoxFit.fill)))
                                                                            ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Container(
                                                                    margin: getMargin(right: 10, bottom: 10),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "Category".tr,
                                                                              style: TextStyle(color: ColorConstant.black902, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                                                                          TextSpan(
                                                                              text: "*".tr,
                                                                              style: TextStyle(color: ColorConstant.deepOrange600, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                        ]),
                                                                        textAlign: TextAlign.left)))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          334.00),
                                                      width: getHorizontalSize(
                                                          301.00),
                                                      margin: getMargin(
                                                          top: 90, bottom: 90),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            left:
                                                                                1,
                                                                            top:
                                                                                23,
                                                                            right:
                                                                                10,
                                                                            bottom:
                                                                                23),
                                                                        decoration: AppDecoration.outlineGray400.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder3),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 21, top: 18, right: 21, bottom: 14), child: Text("Enter your address".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16Gray400.copyWith())))
                                                                            ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Container(
                                                                    margin: getMargin(right: 10, bottom: 10),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "Address".tr,
                                                                              style: TextStyle(color: ColorConstant.black902, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                                                                          TextSpan(
                                                                              text: "*".tr,
                                                                              style: TextStyle(color: ColorConstant.deepOrange600, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                        ]),
                                                                        textAlign: TextAlign.left)))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          339.00),
                                                      width: getHorizontalSize(
                                                          301.00),
                                                      margin: getMargin(
                                                          top: 121,
                                                          bottom: 121),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            left:
                                                                                1,
                                                                            top:
                                                                                23,
                                                                            right:
                                                                                10,
                                                                            bottom:
                                                                                23),
                                                                        decoration: AppDecoration.outlineGray400.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder3),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 21, top: 18, right: 21), child: Text("Select Your District".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16Gray400.copyWith()))),
                                                                              Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 27, top: 2, right: 27, bottom: 2), child: Container(height: getVerticalSize(10.00), width: getHorizontalSize(15.00), child: SvgPicture.asset(ImageConstant.imgArrowdown, fit: BoxFit.fill))))
                                                                            ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Container(
                                                                    margin: getMargin(right: 10, bottom: 10),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "District".tr,
                                                                              style: TextStyle(color: ColorConstant.black902, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                                                                          TextSpan(
                                                                              text: "*".tr,
                                                                              style: TextStyle(color: ColorConstant.deepOrange600, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                        ]),
                                                                        textAlign: TextAlign.left)))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      margin: getMargin(
                                                          top: 20, bottom: 20),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        135.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        267.00),
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            10),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child: Container(
                                                                              margin: getMargin(left: 1, top: 10),
                                                                              decoration: AppDecoration.outlineGray400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 21, top: 18, right: 21, bottom: 70), child: Text("Tell about your service".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16Gray400.copyWith())))
                                                                              ]))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .topLeft,
                                                                          child: Padding(
                                                                              padding: getPadding(right: 10, bottom: 10),
                                                                              child: Text("Description".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16Black902.copyWith())))
                                                                    ])),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        217.00),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            103,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            58),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "Drop images here,\n",
                                                                              style: TextStyle(color: ColorConstant.black902, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400)),
                                                                          TextSpan(
                                                                              text: "Tap below boxes to browse",
                                                                              style: TextStyle(color: ColorConstant.red901, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left))
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
                                    child: Text(
                                        "Use quality pictures for the product. It will be used for products adverts",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular16Gray700
                                            .copyWith())),
                                CustomButton(
                                    width: 263,
                                    text: "Save",
                                    margin:
                                        getMargin(left: 11, top: 17, right: 11),
                                    padding: ButtonPadding.PaddingAll14,
                                    fontStyle: ButtonFontStyle.PoppinsMedium18,
                                    onTap: onTapBtnSave)
                              ]))))
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnSave() {}
}
