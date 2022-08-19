import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/widgets/custom_button.dart';

import 'onboarding_screen_3_screen.dart';

class OnboardingScreen2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.red901,
            body: Container(
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        top: 480,
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
                    //Design Box by KH
                    margin: EdgeInsets.only(right: 0, left: 0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 180,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "W",
                                    style: GoogleFonts.fjordOne(
                                      color: Colors.white,
                                      fontSize: 64,
                                    )),
                                TextSpan(
                                    text: "e will plan",
                                    style: GoogleFonts.fjordOne(
                                        color: Colors.white, fontSize: 24)),
                                TextSpan(
                                    text:
                                        "\n${' ' * 6}your wedding\n${' ' * 6}of your dream",
                                    style: GoogleFonts.fjordOne(
                                        color: Colors.white, fontSize: 24))
                              ])),
                              Expanded(
                                flex: 1,
                                child: Divider(
                                  height: 34,
                                  indent: 65,
                                  endIndent: 0,
                                  thickness: 5,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 0,
                                      child: VerticalDivider(
                                        color: Colors.white,
                                        indent: 70,
                                        width: 30,
                                        thickness: 5,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 0,
                                      child: VerticalDivider(
                                        color: Colors.white,
                                        indent: 14.5,
                                        width: 0,
                                        thickness: 5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: Expanded(
                            flex: 0,
                            child: Divider(
                              height: 0,
                              indent: 15,
                              endIndent: 0,
                              thickness: 5,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(onPressed: () => {}, child: Text("Next")),
                  CustomButton(
                    width: 122,
                    text: "Next",
                    //margin: getMargin(left: 34, top: 60, right: 34, bottom: 60),
                    variant: ButtonVariant.FillWhiteA700,
                    shape: ButtonShape.RoundedBorder8,
                    padding: ButtonPadding.PaddingAll14,
                    fontStyle: ButtonFontStyle.PoppinsRegular13,
                    onTap: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (_) => OnboardingScreen3Screen())),
                  ),
                ]))));
  }
}
