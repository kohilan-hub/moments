import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';

class UserHomeScreen extends GetWidget<UserHomeController> {
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(160.00),
                                                width: size.width,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  top: 10,
                                                                  right: 1),
                                                              decoration: AppDecoration
                                                                  .outlineBlack900
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder50),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            218.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                53,
                                                                            top:
                                                                                42,
                                                                            right:
                                                                                48,
                                                                            bottom:
                                                                                5),
                                                                        child: Text(
                                                                            "msg_1_research_venu"
                                                                                .tr,
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtPoppinsRegular10.copyWith()))
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              width: size.width,
                                                              margin: getMargin(
                                                                  bottom: 10),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .red900),
                                                              child: Container(
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child: Container(
                                                                            height: getVerticalSize(15.00),
                                                                            width: size.width,
                                                                            child: Stack(alignment: Alignment.centerLeft, children: [
                                                                              Align(alignment: Alignment.topLeft, child: Container(height: getVerticalSize(14.00), width: size.width, margin: getMargin(bottom: 10), decoration: BoxDecoration(color: ColorConstant.red901))),
                                                                              Align(
                                                                                  alignment: Alignment.centerLeft,
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
                                                                                        Padding(padding: getPadding(left: 112, top: 2, right: 4, bottom: 1), child: Container(height: getVerticalSize(11.00), width: getHorizontalSize(22.00), child: SvgPicture.asset(ImageConstant.imgBattery, fit: BoxFit.fill)))
                                                                                      ])))
                                                                            ]))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerRight,
                                                                        child: Padding(
                                                                            padding: getPadding(left: 15, top: 7, right: 15),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                              Text("lbl_moments".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtVollkornRomanRegular20.copyWith()),
                                                                              Padding(padding: getPadding(left: 83, top: 2, bottom: 6), child: Container(height: getSize(20.00), width: getSize(20.00), child: SvgPicture.asset(ImageConstant.imgUser20X20, fit: BoxFit.fill)))
                                                                            ])))
                                                                  ]))))
                                                    ]))),
                                        Padding(
                                            padding: getPadding(
                                                left: 15, top: 49, right: 15),
                                            child: Obx(() => GridView.builder(
                                                shrinkWrap: true,
                                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent:
                                                        getVerticalSize(96.00),
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing:
                                                        getHorizontalSize(7.00),
                                                    crossAxisSpacing:
                                                        getHorizontalSize(
                                                            7.00)),
                                                physics:
                                                    BouncingScrollPhysics(),
                                                itemCount: controller
                                                    .userHomeModelObj
                                                    .value
                                                    .gridpngegg1ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  Gridpngegg1ItemModel model =
                                                      controller
                                                              .userHomeModelObj
                                                              .value
                                                              .gridpngegg1ItemList[
                                                          index];
                                                  return Gridpngegg1ItemWidget(
                                                      model,
                                                      onTapTxtMakeupartist:
                                                          onTapTxtMakeupartist);
                                                })))
                                      ])))
                        ]))))));
  }

  onTapTxtMakeupartist() {
    Get.toNamed(AppRoutes.userVenueOptionSelectedScreen);
  }
}
