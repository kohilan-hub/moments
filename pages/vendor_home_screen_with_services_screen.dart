
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';

class VendorHomeScreenWithServicesScreen
    extends GetWidget<VendorHomeScreenWithServicesController> {
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 8, right: 12),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapRowplus();
                                                            },
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            4),
                                                                decoration: AppDecoration
                                                                    .fillRed800
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder3),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  7,
                                                                              top:
                                                                                  5,
                                                                              bottom:
                                                                                  6),
                                                                          child: Container(
                                                                              height: getSize(10.00),
                                                                              width: getSize(10.00),
                                                                              child: SvgPicture.asset(ImageConstant.imgPlus10X10, fit: BoxFit.fill))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  4,
                                                                              top:
                                                                                  1,
                                                                              right:
                                                                                  4,
                                                                              bottom:
                                                                                  2),
                                                                          child: Text(
                                                                              "lbl_add".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsRegular12WhiteA700.copyWith()))
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 65),
                                                            child: Text(
                                                                "lbl_services"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtVollkornRomanRegular18
                                                                    .copyWith()))
                                                      ]),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 1, bottom: 4),
                                                      child: Container(
                                                          height:
                                                              getSize(20.00),
                                                          width: getSize(20.00),
                                                          child:
                                                              SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgUser,
                                                                  fit: BoxFit
                                                                      .fill)))
                                                ]))
                                      ])))),
                      Padding(
                          padding: getPadding(left: 19, top: 12, right: 19),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller
                                  .vendorHomeScreenWithServicesModelObj
                                  .value
                                  .listunsplash3rzd6kItemList
                                  .length,
                              itemBuilder: (context, index) {
                                Listunsplash3rzd6kItemModel model = controller
                                    .vendorHomeScreenWithServicesModelObj
                                    .value
                                    .listunsplash3rzd6kItemList[index];
                                return Listunsplash3rzd6kItemWidget(model,
                                    onTapBtnEdit: onTapBtnEdit,
                                    onTapBtnDelete: onTapBtnDelete);
                              }))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(267.00),
                          margin: getMargin(left: 19, top: 18, right: 19),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray401)),
                      GestureDetector(
                          onTap: () {
                            onTapRowplus1();
                          },
                          child: Container(
                              margin: getMargin(
                                  left: 19, top: 17, right: 19, bottom: 178),
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

  onTapBtnEdit() {
    Get.toNamed(AppRoutes.vendorEditingAExistingServiceScreen);
  }

  onTapBtnDelete() {
    Get.toNamed(AppRoutes.vendorDeletingAExistingServiceScreen);
  }

  onTapRowplus() {
    Get.toNamed(AppRoutes.vendorAddingNewServiceScreen);
  }

  onTapRowplus1() {
    Get.toNamed(AppRoutes.vendorAddingNewServiceScreen);
  }
}
