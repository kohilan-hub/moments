import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';
import 'package:kohilan_s_application1/widgets/custom_button.dart';

class UserVendorAccountScreen extends StatelessWidget {
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
              centerTitle: true,
              title: Text("Account",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtVollkornRomanRegular18.copyWith()),
              // actions: <Widget>[],
            ),
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(left: 12, top: 19, right: 12),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Name",
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.16,
                                            height: 1.56)),
                                  ]),
                                  textAlign: TextAlign.center))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 12, right: 12),
                              decoration: AppDecoration.outlineBluegray100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 12,
                                                top: 10,
                                                right: 12,
                                                bottom: 10),
                                            child: Text("Naresh",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsRegular16Gray700
                                                    .copyWith(
                                                        letterSpacing: 0.16,
                                                        height: 1.56))))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(left: 12, top: 32, right: 12),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Email address",
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.16,
                                            height: 0.03)),
                                  ]),
                                  textAlign: TextAlign.center))),
                      CustomButton(
                          width: 281,
                          text: "NareshAnnaPuluto@gmail.com",
                          margin: getMargin(left: 12, top: 24, right: 12),
                          variant: ButtonVariant.OutlineBluegray100,
                          padding: ButtonPadding.PaddingAll10,
                          fontStyle: ButtonFontStyle.PoppinsRegular16,
                          alignment: Alignment.centerLeft),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 12, top: 32, right: 12),
                              child: Text("Phone number",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsRegular16.copyWith(
                                      letterSpacing: 0.16, height: 1.56)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 12, right: 12),
                              decoration: AppDecoration.outlineBluegray100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 12,
                                                top: 10,
                                                right: 12,
                                                bottom: 10),
                                            child: Text("+94772129653".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsRegular16Gray700
                                                    .copyWith(
                                                        letterSpacing: 0.16,
                                                        height: 1.56))))
                                  ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(267.00),
                          margin: getMargin(left: 12, top: 50, right: 12),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray401)),
                      CustomButton(
                          width: 158,
                          text: "Log out",
                          margin: getMargin(
                              left: 12, top: 49, right: 12, bottom: 20),
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.MulishSemiBold16,
                          onTap: onTapBtnLogout,
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnLogout() {}
}
