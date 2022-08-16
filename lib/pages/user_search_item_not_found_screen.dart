import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';

class UserSearchItemNotFoundScreen extends StatelessWidget {
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
                              height: getVerticalSize(56.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: size.width,
                                            margin: getMargin(top: 2),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.red900),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapImgArrowleft();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 3,
                                                              bottom: 5),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      19.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      11.00),
                                                              child: SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgArrowleftWhiteA700,
                                                                  fit: BoxFit
                                                                      .fill)))),
                                                  Text("Colombo",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtVollkornRomanRegular20
                                                          .copyWith()),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 4, bottom: 6),
                                                      child: Container(
                                                          height:
                                                              getSize(17.00),
                                                          width: getSize(17.00),
                                                          child: SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgSearch17X17,
                                                              fit:
                                                                  BoxFit.fill)))
                                                ]))),
                                    //
                                  ]))),
                      Padding(
                          padding: getPadding(left: 38, top: 159, right: 38),
                          child: Text("Nothing Found",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16Black90099
                                  .copyWith())),
                      Padding(
                          padding: getPadding(left: 38, top: 1, right: 37),
                          child: Text("your serached item is not founded",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular14Black90090
                                  .copyWith())),
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
