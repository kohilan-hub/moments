import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';

class UserMakeupArtistOptionSelectedScreen
    extends GetWidget<UserMakeupArtistOptionSelectedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                margin: getMargin(bottom: 19),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.infinity,
                          decoration: AppDecoration.fillRed901,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: double.infinity,
                                        decoration:
                                            AppDecoration.fillBlack90063,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: size.width,
                                                  margin: getMargin(
                                                      left: 4, right: 4),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 2),
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
                                                                          top:
                                                                              1,
                                                                          bottom:
                                                                              2),
                                                                      child: Container(
                                                                          height: getVerticalSize(
                                                                              9.00),
                                                                          width: getHorizontalSize(
                                                                              14.00),
                                                                          child: SvgPicture.asset(
                                                                              ImageConstant.imgSignal,
                                                                              fit: BoxFit.fill))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              3),
                                                                      child: Text(
                                                                          "lbl_figma"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtAssistantRegular12
                                                                              .copyWith(height: 1.17))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              8,
                                                                          bottom:
                                                                              2),
                                                                      child: Container(
                                                                          height: getVerticalSize(
                                                                              10.00),
                                                                          width: getHorizontalSize(
                                                                              13.00),
                                                                          child: SvgPicture.asset(
                                                                              ImageConstant.imgSignal12X13,
                                                                              fit: BoxFit.fill))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              65),
                                                                      child: Text(
                                                                          "lbl_3_12_pm"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .center,
                                                                          style: AppStyle
                                                                              .txtAssistantRegular12
                                                                              .copyWith(height: 1.17)))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1,
                                                                bottom: 3),
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        22.00),
                                                                child: SvgPicture.asset(
                                                                    ImageConstant
                                                                        .imgBattery,
                                                                    fit: BoxFit
                                                                        .fill)))
                                                      ]))
                                            ])))
                              ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    decoration: AppDecoration.fillRed900,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapImgArrowleft();
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 12,
                                                      bottom: 11),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          19.00),
                                                      width: getHorizontalSize(
                                                          11.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgArrowleftWhiteA700,
                                                          fit: BoxFit.fill)))),
                                          Padding(
                                              padding:
                                                  getPadding(top: 8, bottom: 7),
                                              child: Text(
                                                  "lbl_makeup_artist".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtVollkornRomanRegular20
                                                      .copyWith())),
                                          Padding(
                                              padding: getPadding(
                                                  top: 13,
                                                  right: 11,
                                                  bottom: 12),
                                              child: Container(
                                                  height: getSize(17.00),
                                                  width: getSize(17.00),
                                                  child: SvgPicture.asset(
                                                      ImageConstant
                                                          .imgSearch17X17,
                                                      fit: BoxFit.fill)))
                                        ]))),
                            Padding(
                                padding: getPadding(left: 7, top: 4, right: 8),
                                child: Obx(() => ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: controller
                                        .userMakeupArtistOptionSelectedModelObj
                                        .value
                                        .listbridalposesphItemList
                                        .length,
                                    itemBuilder: (context, index) {
                                      ListbridalposesphItemModel model = controller
                                          .userMakeupArtistOptionSelectedModelObj
                                          .value
                                          .listbridalposesphItemList[index];
                                      return ListbridalposesphItemWidget(model,
                                          onTapColumnbridalposesph:
                                              onTapColumnbridalposesph);
                                    })))
                          ]))))
                    ]))));
  }

  onTapColumnbridalposesph() {
    Get.toNamed(AppRoutes.userMakeupArtistOptionSelectedChoiceTappedScreen);
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
