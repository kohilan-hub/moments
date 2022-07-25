
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';
import 'package:kohilan_s_application1/core/utils/validation_functions.dart';
import 'package:kohilan_s_application1/widgets/custom_button.dart';
import 'package:kohilan_s_application1/widgets/custom_text_form_field.dart';
import 'package:kohilan_s_application1/domain/googleauth/google_auth_helper.dart';
import 'package:kohilan_s_application1/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 11,
                                          top: 18,
                                          right: 11,
                                          bottom: 20),
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
                                                    left: 15, right: 15),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(44.00),
                                                    width: getHorizontalSize(
                                                        165.00),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Container(
                                                                  margin:
                                                                      getMargin(
                                                                          bottom:
                                                                              10),
                                                                  child: RichText(
                                                                      text: TextSpan(children: [
                                                                        TextSpan(
                                                                            text: "lbl_m3"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.red901,
                                                                                fontSize: getFontSize(35),
                                                                                fontFamily: 'KyivType Sans',
                                                                                fontWeight: FontWeight.w700)),
                                                                        TextSpan(
                                                                            text: "lbl_o_ments2"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.red901,
                                                                                fontSize: getFontSize(25),
                                                                                fontFamily: 'KyivType Sans',
                                                                                fontWeight: FontWeight.w400))
                                                                      ]),
                                                                      textAlign: TextAlign.center))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              45,
                                                                          top:
                                                                              10,
                                                                          right:
                                                                              45),
                                                                  child: Image.asset(
                                                                      ImageConstant
                                                                          .imgIcons8ringsid,
                                                                      height: getSize(
                                                                          30.00),
                                                                      width: getSize(
                                                                          30.00),
                                                                      fit: BoxFit
                                                                          .fill)))
                                                        ]))),
                                            Container(
                                                width: double.infinity,
                                                margin: getMargin(
                                                    left: 15,
                                                    top: 28,
                                                    right: 15),
                                                decoration: AppDecoration
                                                    .fillWhiteA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder30),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomTextFormField(
                                                          width: 236,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .emailaddressController1,
                                                          hintText:
                                                              "lbl_email_address"
                                                                  .tr,
                                                          margin: getMargin(
                                                              left: 12,
                                                              top: 32,
                                                              right: 12),
                                                          shape:
                                                              TextFormFieldShape
                                                                  .RoundedBorder2,
                                                          validator: (value) {
                                                            if (value == null ||
                                                                (!isValidEmail(
                                                                    value,
                                                                    isRequired:
                                                                        true))) {
                                                              return "Please enter valid email";
                                                            }
                                                            return null;
                                                          }),
                                                      CustomTextFormField(
                                                          width: 236,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .passwordController1,
                                                          hintText:
                                                              "lbl_password".tr,
                                                          margin: getMargin(
                                                              left: 12,
                                                              top: 28,
                                                              right: 12),
                                                          shape:
                                                              TextFormFieldShape
                                                                  .RoundedBorder2,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          validator: (value) {
                                                            if (value == null ||
                                                                (!isValidPassword(
                                                                    value,
                                                                    isRequired:
                                                                        true))) {
                                                              return "Please enter valid password";
                                                            }
                                                            return null;
                                                          },
                                                          isObscureText: true),
                                                      CustomButton(
                                                          width: 236,
                                                          text: "lbl_login".tr,
                                                          margin: getMargin(
                                                              left: 12,
                                                              top: 28,
                                                              right: 12,
                                                              bottom: 36),
                                                          variant: ButtonVariant
                                                              .OutlineRed901,
                                                          shape: ButtonShape
                                                              .RoundedBorder8,
                                                          padding: ButtonPadding
                                                              .PaddingAll10,
                                                          fontStyle: ButtonFontStyle
                                                              .PoppinsRegular15,
                                                          onTap: onTapBtnLogin)
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 9,
                                                    right: 15),
                                                child: Text(
                                                    "msg_forgot_password".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtPoppinsRegular14
                                                        .copyWith())),
                                            Padding(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 27,
                                                    right: 15),
                                                child: Text(
                                                    "msg_or_continue_wit".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanRegular14
                                                        .copyWith(
                                                            height: 1.43))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        getPadding(top: 16),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapRowrefresh();
                                                              },
                                                              child: Container(
                                                                  decoration: AppDecoration
                                                                      .fillGray102
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder3),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 36,
                                                                                top: 12,
                                                                                bottom: 12),
                                                                            child: Container(height: getSize(16.00), width: getSize(16.00), child: SvgPicture.asset(ImageConstant.imgRefresh, fit: BoxFit.fill))),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 8,
                                                                                top: 10,
                                                                                right: 37,
                                                                                bottom: 10),
                                                                            child: Text("lbl_google".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular14Bluegray700.copyWith(height: 1.43)))
                                                                      ]))),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapRowfacebook();
                                                              },
                                                              child: Container(
                                                                  decoration: AppDecoration
                                                                      .fillGray102
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder3),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 28,
                                                                                top: 12,
                                                                                bottom: 12),
                                                                            child: Image.asset(ImageConstant.imgFrame, height: getSize(16.00), width: getSize(16.00), fit: BoxFit.fill)),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 8,
                                                                                top: 10,
                                                                                right: 28,
                                                                                bottom: 10),
                                                                            child: Text("lbl_facebook".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanRegular14Bluegray700.copyWith(height: 1.43)))
                                                                      ])))
                                                        ]))),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtDonthaveacco();
                                                },
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 15,
                                                        top: 30,
                                                        right: 15),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "msg_don_t_have_acco2"
                                                                  .tr,
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .gray602,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400)),
                                                          TextSpan(
                                                              text: "lbl_create_now"
                                                                  .tr,
                                                              style: TextStyle(
                                                                  color:
                                                                      ColorConstant
                                                                          .red901,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500))
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left)))
                                          ])))
                            ])))))));
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.userHomeScreen);
  }

  onTapRowrefresh() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapRowfacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtDonthaveacco() {
    Get.toNamed(AppRoutes.chooseRoleScreen);
  }
}
