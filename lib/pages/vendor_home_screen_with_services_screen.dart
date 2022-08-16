import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';

class VendorHomeScreenWithServicesScreen extends StatelessWidget {
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
                                                                              "Add",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsRegular12WhiteA700.copyWith()))
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 65),
                                                            child: Text(
                                                                "Services",
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
                      //Zintrella Makeup
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Color(0xffF4F4F6),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffC4C4C4),
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height: MediaQuery.of(context).size.width / 3,
                                  image: AssetImage(
                                      'assets/images/Makeup Artist.png'),
                                  //fit: BoxFit.cover
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.width / 3,
                              // decoration: BoxDecoration(
                              //   color: Color(0xffC4C4C4),
                              // ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Zintrella Makeup",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400)),
                                  RichText(
                                      text: const TextSpan(children: [
                                    TextSpan(
                                        text: 'Category: ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xffFF4521))),
                                    TextSpan(
                                        text: 'Makeup Artist',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFF4521))),
                                  ])),
                                  Row(
                                    children: [
                                      RaisedButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          padding:
                                              EdgeInsets.fromLTRB(10, 6, 10, 6),
                                          color: Color(0xffDFDDDE),
                                          onPressed: () => {},
                                          child: Text('Edit',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Mulish"))),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RaisedButton(
                                          shape: RoundedRectangleBorder(
                                            
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          padding:
                                              EdgeInsets.fromLTRB(10, 6, 10, 6),
                                          color: Color(0xffFF4521)
                                              .withOpacity(0.68),
                                          onPressed: () => deletingConfirmAlertBox(context),
                                          child: Text('Delete',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Mulish"))),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //Acthu Pappa Cakes
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Color(0xffF4F4F6),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffC4C4C4),
                                  borderRadius: BorderRadius.circular(10)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height: MediaQuery.of(context).size.width / 3,
                                  image: AssetImage('assets/images/Cake.png'),
                                  //fit: BoxFit.cover
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.width / 3,
                              // decoration: BoxDecoration(
                              //   color: Color(0xffC4C4C4),
                              // ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Acthu Pappa Cakes",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400)),
                                  RichText(
                                      text: const TextSpan(children: [
                                    TextSpan(
                                        text: 'Category: ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xffFF4521))),
                                    TextSpan(
                                        text: 'Cake',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFF4521))),
                                  ])),
                                  Row(
                                    children: [
                                      RaisedButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          padding:
                                              EdgeInsets.fromLTRB(10, 6, 10, 6),
                                          color: Color(0xffDFDDDE),
                                          onPressed: () => {},
                                          child: Text('Edit',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Mulish"))),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RaisedButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          padding:
                                              EdgeInsets.fromLTRB(10, 6, 10, 6),
                                          color: Color(0xffFF4521)
                                              .withOpacity(0.68),
                                          onPressed: () => deletingConfirmAlertBox(context),
                                          child: Text('Delete',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Mulish"))),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      //
                      // Padding(
                      //     padding: getPadding(left: 19, top: 12, right: 19),
                      //     // child: Obx(() => ListView.builder(
                      //     physics: BouncingScrollPhysics(),
                      //     shrinkWrap: true,
                      //     itemCount: controller
                      //         .vendorHomeScreenWithServicesModelObj
                      //         .value
                      //         .listunsplash3rzd6kItemList
                      //         .length,
                      //     itemBuilder: (context, index) {
                      //       Listunsplash3rzd6kItemModel model = controller
                      //           .vendorHomeScreenWithServicesModelObj
                      //           .value
                      //           .listunsplash3rzd6kItemList[index];
                      //       return Listunsplash3rzd6kItemWidget(model,
                      //           onTapBtnEdit: onTapBtnEdit,
                      //           onTapBtnDelete: onTapBtnDelete);
                      //     }))),
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
                                        child: Text("Add Service",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMulishSemiBold16WhiteA700
                                                .copyWith()))
                                  ])))
                    ]))))));
  }

deletingConfirmAlertBox(BuildContext context) {
    return showDialog(
                                              context: context,
                                              builder: (ctx) => AlertDialog(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(color: Color(0xff950320),width: 1.5),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0))),
                                                content: Column(
                                                  
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("Are you sure?",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      Text("Deleting",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xffAF0B2C),
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      Text("Zintrella Makeup",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          RaisedButton(
                                                              elevation: 0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          10,
                                                                          6,
                                                                          10,
                                                                          6),
                                                              color: Color(
                                                                  0xff2bff4520),
                                                              //#2bff4520
                                                              // Color(0xffFF4521#2bff4520)
                                                              //     .withOpacity(0.68),
                                                              onPressed:
                                                                  () => {
                                                                        Navigator.of(ctx)
                                                                            .pop()
                                                                      },
                                                              child: Text(
                                                                  'Yes',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      fontFamily:
                                                                          "Mulish"))),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          RaisedButton(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          10,
                                                                          6,
                                                                          10,
                                                                          6),
                                                              color: Color(
                                                                  0xffDFDDDE),
                                                              onPressed:
                                                                  () => {
                                                                        Navigator.of(ctx)
                                                                            .pop()
                                                                      },
                                                              child: Text(
                                                                  'No',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700,
                                                                      fontFamily:
                                                                          "Mulish"))),
                                                        ],
                                                      )
                                                    ]),
                                              ),
                                            );
  }

  onTapBtnEdit() {}

  onTapBtnDelete() {}

  onTapRowplus() {}

  onTapRowplus1() {}
}
