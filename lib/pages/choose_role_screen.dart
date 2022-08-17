import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moments/core/app_export.dart';

class ChooseRoleScreen extends StatelessWidget {
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

              //actions: <Widget>[],
            ),
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
                      Padding(
                          padding: getPadding(left: 83, top: 17, right: 83),
                          child: Text("Choose Your Role",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtVollkornRomanRegular20Red901
                                  .copyWith())),
                      GestureDetector(
                          onTap: () {
                            onTapRowvendors();
                          },
                          child: Container(
                              margin: getMargin(left: 83, top: 72, right: 83),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 42, top: 21, bottom: 21),
                                        child: Text("Vendors",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtPoppinsRegular14WhiteA700
                                                .copyWith())),
                                    Padding(
                                        padding: getPadding(
                                            left: 13,
                                            top: 23,
                                            right: 5,
                                            bottom: 22),
                                        child: Container(
                                            height: getVerticalSize(18.00),
                                            width: getHorizontalSize(21.00),
                                            child: SvgPicture.asset(
                                                ImageConstant.imgSettings,
                                                fit: BoxFit.fill)))
                                  ]))),
                      GestureDetector(
                          onTap: () {
                            onTapRowusers();
                          },
                          child: Container(
                              margin: getMargin(
                                  left: 83, top: 117, right: 83, bottom: 154),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 52, top: 21, bottom: 21),
                                        child: Text("Users",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtPoppinsRegular14WhiteA700
                                                .copyWith())),
                                    Padding(
                                        padding: getPadding(
                                            left: 13,
                                            top: 23,
                                            right: 5,
                                            bottom: 22),
                                        child: Container(
                                            height: getVerticalSize(18.00),
                                            width: getHorizontalSize(21.00),
                                            child: Icon(Icons.person,
                                                color: Colors.white))
                                        // SvgPicture.asset(
                                        //     ImageConstant.imgSettings,
                                        //     fit: BoxFit.fill))
                                        )
                                  ])))
                    ]))))));
  }

  onTapRowvendors() {}

  onTapRowusers() {}
}
