import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moments/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UserVenueOptionSelectedChoiceTappedScreen extends StatelessWidget {
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
              title: Text("Venue",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtVollkornRomanRegular18.copyWith()),
              actions: <Widget>[
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                child: Stack(
                                                    //
                                                    children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 7,
                                                                      top: 4,
                                                                      right: 8),
                                                              child: Container(
                                                                margin:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        15.0),
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        6.0),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xffF2F2F2),
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              10.0) //                 <--- border radius here
                                                                          ),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      color: Colors
                                                                          .black
                                                                          .withOpacity(
                                                                              0.20),
                                                                      spreadRadius:
                                                                          0,
                                                                      blurRadius:
                                                                          4,
                                                                      offset: Offset(
                                                                          0,
                                                                          4), // changes position of shadow
                                                                    ),
                                                                  ],
                                                                ),
                                                                child: Column(
                                                                  children: [
                                                                    FittedBox(
                                                                      fit: BoxFit
                                                                          .fill,
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10),
                                                                        child: Image(
                                                                            width: MediaQuery.of(context)
                                                                                .size
                                                                                .width,
                                                                            height:
                                                                                220,
                                                                            image:
                                                                                AssetImage('assets/images/Hall1.jpg'),
                                                                            fit: BoxFit.cover),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                        "Selva Hall",
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .black,
                                                                            fontSize:
                                                                                16,
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight.w400))
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          ])))
                                                ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 19,
                                                    top: 32,
                                                    right: 19),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  8.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  5.00),
                                                          margin: getMargin(
                                                              top: 4,
                                                              bottom: 4),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .deepOrangeA100)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
                                                          child: Text("Jaffna",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12
                                                                  .copyWith()))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(121.00),
                                                margin: getMargin(
                                                    left: 17, right: 17),
                                                child: Text(
                                                    "No: 1229,\nPoonari Maraththady,\nAB16,\nJaffna 40000"
                                                        .tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Black900
                                                        .copyWith()))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 32,
                                                    right: 17),
                                                child: Text("Meal Details".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular14
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 3,
                                                    right: 17),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("Veg food".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsLight12
                                                              .copyWith()),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 50),
                                                          child: Text(
                                                              "Rs.750/=".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12Red901
                                                                  .copyWith()))
                                                    ]))),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(155.00),
                                            margin: getMargin(
                                                left: 17, top: 5, right: 17),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.gray300Cc)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 3,
                                                    right: 17),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("Non-Veg food".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsLight12
                                                              .copyWith()),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20),
                                                          child: Text(
                                                              "Rs.850/=".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12Red901
                                                                  .copyWith()))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(48.00),
                                                width:
                                                    getHorizontalSize(195.00),
                                                margin: getMargin(
                                                    left: 17,
                                                    top: 40,
                                                    right: 17),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              decoration: AppDecoration
                                                                  .outlineBlack90026
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
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
                                                                                23,
                                                                            top:
                                                                                12,
                                                                            bottom:
                                                                                12),
                                                                        child: Text(
                                                                            "Contact now"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsRegular16.copyWith())),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                5,
                                                                            right:
                                                                                25,
                                                                            bottom:
                                                                                6),
                                                                        child: Image.asset(
                                                                            ImageConstant
                                                                                .imgPngegg101,
                                                                            height:
                                                                                getVerticalSize(35.00),
                                                                            width: getHorizontalSize(35.00),
                                                                            fit: BoxFit.fill))
                                                                  ])))
                                                    ])))
                                      ])))
                        ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
