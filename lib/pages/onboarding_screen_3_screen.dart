import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/widgets/custom_button.dart';

import 'register_screen.dart';

class OnboardingScreen3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.red901,
        body: Container(
            //background image
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img_bride.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(left: 38, right: 38, bottom: 20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: getMargin(left: 33, right: 33),
                                decoration: AppDecoration.txtOutlineBlack9003f,
                                child: Text(
                                  "Welcome",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.fjordOne(
                                      fontSize: 24, color: Colors.white),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    //width: getHorizontalSize(244.00),
                                    decoration:
                                        AppDecoration.txtOutlineBlack9003f,
                                    child: Text(
                                      "The best things in the life are not things, they are moments"
                                          .tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          color: Colors.white,
                                          letterSpacing: 1),
                                    )))
                          ]))),
              CustomButton(
                  width: 122,
                  text: "Done".tr,
                  margin: EdgeInsets.only(bottom: 40),
                  variant: ButtonVariant.FillWhiteA700,
                  shape: ButtonShape.RoundedBorder8,
                  padding: ButtonPadding.PaddingAll14,
                  fontStyle: ButtonFontStyle.PoppinsRegular13,
                  onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => RegisterScreen())),
                  alignment: Alignment.bottomCenter)
            ])));
  }

  onTapBtnDone() {}
}
