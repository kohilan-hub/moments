import 'package:flutter/material.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/core/utils/validation_functions.dart';
import 'package:moments/widgets/custom_button.dart';
import 'package:moments/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.red901,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.outlineRed90112,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(136.00),
                                            width: getHorizontalSize(242.00),
                                            margin: getMargin(right: 10),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 10),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgEllipse9,
                                                              height:
                                                                  getVerticalSize(
                                                                      136.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      86.00),
                                                              fit: BoxFit
                                                                  .fill))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 10,
                                                              top: 17,
                                                              bottom: 17),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_m3"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize: getFontSize(
                                                                                35),
                                                                            fontFamily:
                                                                                'KyivType Sans',
                                                                            fontWeight:
                                                                                FontWeight.w700)),
                                                                    TextSpan(
                                                                        text: "lbl_o_ments2"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize: getFontSize(
                                                                                25),
                                                                            fontFamily:
                                                                                'KyivType Sans',
                                                                            fontWeight:
                                                                                FontWeight.w400))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 90,
                                                              top: 30,
                                                              right: 90,
                                                              bottom: 30),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgIcons8ring48,
                                                              height: getSize(
                                                                  30.00),
                                                              width: getSize(
                                                                  30.00),
                                                              fit:
                                                                  BoxFit.fill)))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            height: getVerticalSize(454.00),
                                            width: getHorizontalSize(291.00),
                                            margin: getMargin(left: 10, top: 3),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  263.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  153.00),
                                                          margin: getMargin(
                                                              left: 10,
                                                              top: 10),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .red900,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          131.50)),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                    color: ColorConstant
                                                                        .black9003f,
                                                                    spreadRadius:
                                                                        getHorizontalSize(
                                                                            2.00),
                                                                    blurRadius:
                                                                        getHorizontalSize(
                                                                            2.00),
                                                                    offset:
                                                                        Offset(
                                                                            0,
                                                                            4))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Container(
                                                          margin: getMargin(
                                                              right: 10,
                                                              bottom: 10),
                                                          decoration: AppDecoration
                                                              .fillRed901
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder30),
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
                                                                CustomTextFormField(
                                                                    width: 236,
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    // controller:
                                                                    //     controller
                                                                    //         .nameController,
                                                                    hintText:
                                                                        "lbl_name2"
                                                                            .tr,
                                                                    margin: getMargin(
                                                                        left:
                                                                            12,
                                                                        top: 18,
                                                                        right:
                                                                            12),
                                                                    validator:
                                                                        (value) {
                                                                      if (value ==
                                                                              null ||
                                                                          (!isText(
                                                                              value,
                                                                              isRequired: true))) {
                                                                        return "Please enter valid text";
                                                                      }
                                                                      return null;
                                                                    }),
                                                                CustomTextFormField(
                                                                    width: 236,
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    // controller:
                                                                    //     controller
                                                                    //         .emailaddressController,
                                                                    hintText:
                                                                        "lbl_email_address"
                                                                            .tr,
                                                                    margin: getMargin(
                                                                        left:
                                                                            12,
                                                                        top: 21,
                                                                        right:
                                                                            12),
                                                                    validator:
                                                                        (value) {
                                                                      if (value ==
                                                                              null ||
                                                                          (!isValidEmail(
                                                                              value,
                                                                              isRequired: true))) {
                                                                        return "Please enter valid email";
                                                                      }
                                                                      return null;
                                                                    }),
                                                                CustomTextFormField(
                                                                    width: 236,
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    // controller:
                                                                    //     controller
                                                                    //         .passwordController,
                                                                    hintText:
                                                                        "lbl_password"
                                                                            .tr,
                                                                    margin: getMargin(
                                                                        left:
                                                                            12,
                                                                        top: 29,
                                                                        right:
                                                                            12),
                                                                    validator:
                                                                        (value) {
                                                                      if (value ==
                                                                              null ||
                                                                          (!isValidPassword(
                                                                              value,
                                                                              isRequired: true))) {
                                                                        return "Please enter valid password";
                                                                      }
                                                                      return null;
                                                                    },
                                                                    isObscureText:
                                                                        true),
                                                                CustomTextFormField(
                                                                    width: 236,
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    // controller:
                                                                    //     controller
                                                                    //         .confirmpasswordController,
                                                                    hintText:
                                                                        "msg_confirm_passwor"
                                                                            .tr,
                                                                    margin: getMargin(
                                                                        left:
                                                                            12,
                                                                        top: 21,
                                                                        right:
                                                                            12),
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .done,
                                                                    validator:
                                                                        (value) {
                                                                      if (value ==
                                                                              null ||
                                                                          (!isValidPassword(
                                                                              value,
                                                                              isRequired: true))) {
                                                                        return "Please enter valid password";
                                                                      }
                                                                      return null;
                                                                    },
                                                                    isObscureText:
                                                                        true),
                                                                CustomButton(
                                                                    width: 236,
                                                                    text:
                                                                        "msg_create_your_acc"
                                                                            .tr,
                                                                    margin: getMargin(
                                                                        left:
                                                                            12,
                                                                        top: 21,
                                                                        right:
                                                                            12,
                                                                        bottom:
                                                                            21),
                                                                    variant:
                                                                        ButtonVariant
                                                                            .OutlineRed900,
                                                                    shape: ButtonShape
                                                                        .RoundedBorder8,
                                                                    padding:
                                                                        ButtonPadding
                                                                            .PaddingAll10,
                                                                    fontStyle:
                                                                        ButtonFontStyle
                                                                            .PoppinsRegular15,
                                                                    onTap:
                                                                        onTapBtnCreateyouracc)
                                                              ]))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomLeft,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapTxtAlreadyhavean();
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 46,
                                                                      top: 63,
                                                                      right: 46,
                                                                      bottom:
                                                                          63),
                                                              child: Text(
                                                                  "msg_already_have_an"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular13
                                                                      .copyWith()))))
                                                ])))
                                  ])))
                    ])))));
  }

  onTapBtnCreateyouracc() {
    // Get.toNamed(AppRoutes.userHomeScreen);
  }

  onTapTxtAlreadyhavean() {
    // Get.toNamed(AppRoutes.loginScreen);
  }
}
