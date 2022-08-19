import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/pages/login_screen.dart';
import 'package:moments/widgets/custom_button.dart';

import 'choose_role_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.red901,
            body: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(),
                      Positioned(
                        // top: -30,
                        left: -290,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                height: getVerticalSize(171.00),
                                width: getHorizontalSize(180.00),
                                margin: getMargin(right: 10),
                                decoration: BoxDecoration(
                                    color: ColorConstant.red900,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(90)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: ColorConstant.black9003f,
                                          spreadRadius: 5,
                                          blurRadius: 14,
                                          offset: Offset(0, 4))
                                    ]))),
                      ),
                      Positioned(
                        top: 180,
                        left: 60,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                height: 280,
                                width: 200,
                                margin: getMargin(right: 5),
                                decoration: BoxDecoration(
                                    color: ColorConstant.red900,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(100)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: ColorConstant.black9003f,
                                          spreadRadius: 5,
                                          blurRadius: 14,
                                          offset: Offset(0, 4))
                                    ]))),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Lets do our fantasy...",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.vollkorn(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1)),
                        Text(
                          "Moments  Offering wedding planning, styling and catering all under one roof.",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.white,
                              letterSpacing: 1),
                        )
                      ],
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  // Align(
                  //     alignment: Alignment.topLeft,
                  //     child: Container(
                  //         child: )),
                  Container(
                      width: double.infinity,
                      margin: getMargin(top: 40),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL50),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                                width: 177,
                                text: "Register with us",
                                margin: getMargin(left: 49, top: 52, right: 49),
                                shape: ButtonShape.CircleBorder17,
                                fontStyle: ButtonFontStyle.PoppinsRegular14,
                                onTap: () => Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                        builder: (_) => ChooseRoleScreen()))),
                            GestureDetector(
                                child: Container(
                                    margin: getMargin(
                                        left: 49,
                                        top: 24,
                                        right: 49,
                                        bottom: 20),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Already have an account?",
                                              style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "Login",
                                              style: TextStyle(
                                                  color: ColorConstant.red901,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                        textAlign: TextAlign.center)),
                                onTap: () => Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                        builder: (_) => LoginScreen())))
                          ]))
                ]))));
  }

  onTapBtnRegisterwithu() {}

  onTapTxtAlreadyhavean2() {}
}
