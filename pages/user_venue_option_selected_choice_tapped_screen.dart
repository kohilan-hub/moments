import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UserVenueOptionSelectedChoiceTappedScreen
    extends GetWidget<UserVenueOptionSelectedChoiceTappedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  margin: getMargin(bottom: 10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(56.00),
                                                width: size.width,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 90,
                                                                      top: 10,
                                                                      right: 90,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_v".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .txtFjordOne13WhiteA700
                                                                      .copyWith()))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              width: size.width,
                                                              margin: getMargin(
                                                                  top: 2),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .red900),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapImgArrowleft();
                                                                        },
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(top: 3, bottom: 5),
                                                                            child: Container(height: getVerticalSize(19.00), width: getHorizontalSize(11.00), child: SvgPicture.asset(ImageConstant.imgArrowleftWhiteA700, fit: BoxFit.fill)))),
                                                                    Text(
                                                                        "lbl_venue"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtVollkornRomanRegular20
                                                                            .copyWith()),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                4,
                                                                            bottom:
                                                                                6),
                                                                        child: Container(
                                                                            height:
                                                                                getSize(17.00),
                                                                            width: getSize(17.00),
                                                                            child: SvgPicture.asset(ImageConstant.imgSearch17X17, fit: BoxFit.fill)))
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  bottom: 10),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillRed901,
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
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child: Container(
                                                                            decoration: AppDecoration.fillBlack90063,
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                              Padding(
                                                                                  padding: getPadding(left: 4, top: 1, bottom: 2),
                                                                                  child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                    Padding(padding: getPadding(top: 2), child: Container(height: getVerticalSize(11.00), width: getHorizontalSize(14.00), child: SvgPicture.asset(ImageConstant.imgSignal, fit: BoxFit.fill))),
                                                                                    Padding(padding: getPadding(left: 3), child: Text("lbl_figma".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtAssistantRegular12.copyWith(height: 1.17))),
                                                                                    Padding(padding: getPadding(left: 8, top: 1), child: Container(height: getVerticalSize(12.00), width: getHorizontalSize(13.00), child: SvgPicture.asset(ImageConstant.imgSignal12X13, fit: BoxFit.fill))),
                                                                                    Padding(padding: getPadding(left: 67), child: Text("lbl_3_12_pm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtAssistantRegular12.copyWith(height: 1.17)))
                                                                                  ])),
                                                                              Padding(padding: getPadding(top: 2, right: 4, bottom: 1), child: Container(height: getVerticalSize(13.00), width: getHorizontalSize(22.00), child: SvgPicture.asset(ImageConstant.imgBattery, fit: BoxFit.fill)))
                                                                            ])))
                                                                  ])))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(196.00),
                                                width:
                                                    getHorizontalSize(305.00),
                                                margin: getMargin(
                                                    left: 7, top: 12, right: 8),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 94,
                                                                      right: 94,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_hgh".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .txtFjordOne13WhiteA700
                                                                      .copyWith()))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      196.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      305.00),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  children: [
                                                                    Obx(() => CarouselSlider.builder(
                                                                        options: CarouselOptions(
                                                                            height: getVerticalSize(196.00),
                                                                            initialPage: 0,
                                                                            autoPlay: true,
                                                                            viewportFraction: 1.0,
                                                                            enableInfiniteScroll: false,
                                                                            scrollDirection: Axis.horizontal,
                                                                            onPageChanged: (index, reason) {
                                                                              controller.silderIndex.value = index;
                                                                            }),
                                                                        itemCount: controller.userVenueOptionSelectedChoiceTappedModelObj.value.sliderselva1ItemList.length,
                                                                        itemBuilder: (context, index, realIndex) {
                                                                          Sliderselva1ItemModel model = controller
                                                                              .userVenueOptionSelectedChoiceTappedModelObj
                                                                              .value
                                                                              .sliderselva1ItemList[index];
                                                                          return Sliderselva1ItemWidget(
                                                                              model);
                                                                        })),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Obx(() => Container(
                                                                            height: getVerticalSize(
                                                                                5.00),
                                                                            margin: getMargin(
                                                                                left: 112,
                                                                                top: 36,
                                                                                right: 112,
                                                                                bottom: 36),
                                                                            child: AnimatedSmoothIndicator(activeIndex: controller.silderIndex.value, count: controller.userVenueOptionSelectedChoiceTappedModelObj.value.sliderselva1ItemList.length, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 33, activeDotColor: ColorConstant.red901, dotColor: ColorConstant.gray401, dotHeight: getVerticalSize(5.00), dotWidth: getHorizontalSize(5.00))))))
                                                                  ])))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 19,
                                                    top: 20,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  8.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  5.00),
                                                          margin: getMargin(
                                                              top: 4,
                                                              bottom: 4),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .deepOrangeA100)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
                                                          child: Text(
                                                              "lbl_jaffna2".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12
                                                                  .copyWith()))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 17, right: 17),
                                                child: Text(
                                                    "msg_no_1229_poon".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Black900
                                                        .copyWith()))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 54,
                                                    right: 17),
                                                child: Text(
                                                    "lbl_meal_details".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular14
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 3,
                                                    right: 17),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("lbl_veg_food".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsLight12
                                                              .copyWith()),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 50),
                                                          child: Text(
                                                              "lbl_rs_750".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12Red901
                                                                  .copyWith()))
                                                    ]))),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(155.00),
                                            margin: getMargin(
                                                left: 17, top: 5, right: 17),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.gray300Cc)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 3,
                                                    right: 17),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                          "lbl_non_veg_food".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsLight12
                                                              .copyWith()),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20),
                                                          child: Text(
                                                              "lbl_rs_850".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12Red901
                                                                  .copyWith()))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(48.00),
                                                width:
                                                    getHorizontalSize(195.00),
                                                margin: getMargin(
                                                    left: 17,
                                                    top: 40,
                                                    right: 17),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 81,
                                                                      right: 81,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_next".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .txtFjordOne13WhiteA700
                                                                      .copyWith()))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              decoration: AppDecoration
                                                                  .outlineBlack90026
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
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
                                                                                23,
                                                                            top:
                                                                                12,
                                                                            bottom:
                                                                                12),
                                                                        child: Text(
                                                                            "lbl_contact_now"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsRegular16.copyWith())),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                5,
                                                                            right:
                                                                                25,
                                                                            bottom:
                                                                                6),
                                                                        child: Image.asset(
                                                                            ImageConstant
                                                                                .imgPngegg101,
                                                                            height:
                                                                                getVerticalSize(37.00),
                                                                            width: getHorizontalSize(35.00),
                                                                            fit: BoxFit.fill))
                                                                  ])))
                                                    ])))
                                      ])))
                        ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
