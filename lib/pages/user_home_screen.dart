import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';

class UserHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(160.00),
                                                width: size.width,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  top: 10,
                                                                  right: 1),
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineBlack900
                                                                      .copyWith(
                                                                borderRadius: BorderRadius.only(
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            50.0),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            50.0)),
                                                              ),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            218.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                53,
                                                                            top:
                                                                                42,
                                                                            right:
                                                                                48,
                                                                            bottom:
                                                                                5),
                                                                        child: Text(
                                                                            "1.Research venue option\n2.Choose your suitable makeup\n3.Make a best catering services\n4.Select your suitable photography\n5.Find you available pandits\n6.Quickly ordered your tasty wedding cake",
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtPoppinsRegular10.copyWith()))
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              width: size.width,
                                                              margin: getMargin(
                                                                  bottom: 10),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .red900),
                                                              child: Container(
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(15.00),
                                                                            width: size.width,
                                                                            child: Stack(alignment: Alignment.centerLeft, children: []))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerRight,
                                                                        child: Padding(
                                                                            padding: getPadding(left: 15, top: 7, right: 15),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                              Text("Moments", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtVollkornRomanRegular20.copyWith()),
                                                                              Padding(padding: getPadding(left: 83, top: 2, bottom: 6), child: Container(height: getSize(20.00), width: getSize(20.00), child: SvgPicture.asset(ImageConstant.imgUser20X20, fit: BoxFit.fill)))
                                                                            ])))
                                                                  ]))))
                                                    ]))),
                                        // Padding(
                                        //     padding: getPadding(
                                        //         left: 15, top: 49, right: 15),
                                        //     child:
                                        Expanded(
                                          child: GridView(
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2),
                                            children: <Widget>[
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(15.0),
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(
                                                          10.0) //                 <--- border radius here
                                                      ),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                    children: [
                                                      Image(
                                                          width: 120,
                                                          height: 120,
                                                          image: AssetImage(
                                                              'assets/images/Makeup Artist.png')),
                                                      Text("Makeup Artist",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(15.0),
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(
                                                          10.0) //                 <--- border radius here
                                                      ),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                    children: [
                                                      Image(
                                                          width: 120,
                                                          height: 120,
                                                          image: AssetImage(
                                                              'assets/images/Photography.png')),
                                                      Text("Photography",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(15.0),
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(
                                                          10.0) //                 <--- border radius here
                                                      ),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                    children: [
                                                      Image(
                                                          width: 120,
                                                          height: 120,
                                                          image: AssetImage(
                                                              'assets/images/Wedding Hall.png')),
                                                      Text("Wedding Hall",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(15.0),
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(
                                                          10.0) //                 <--- border radius here
                                                      ),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                    children: [
                                                      Image(
                                                          width: 120,
                                                          height: 120,
                                                          image: AssetImage(
                                                              'assets/images/Caterers.png')),
                                                      Text("Caterers",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(15.0),
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(
                                                          10.0) //                 <--- border radius here
                                                      ),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                    children: [
                                                      Image(
                                                          width: 120,
                                                          height: 120,
                                                          image: AssetImage(
                                                              'assets/images/Cake.png')),
                                                      Text("Cake",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.all(15.0),
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(
                                                          10.0) //                 <--- border radius here
                                                      ),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                    children: [
                                                      Image(
                                                          width: 120,
                                                          height: 120,
                                                          image: AssetImage(
                                                              'assets/images/Pandits.png')),
                                                      Text("Pandits",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                        //child:
                                        // Obx(() => GridView.builder(
                                        //     shrinkWrap: true,
                                        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        //         mainAxisExtent:
                                        //             getVerticalSize(96.00),
                                        //         crossAxisCount: 2,
                                        //         mainAxisSpacing:
                                        //             getHorizontalSize(7.00),
                                        //         crossAxisSpacing:
                                        //             getHorizontalSize(
                                        //                 7.00)),
                                        //     physics:
                                        //         BouncingScrollPhysics(),
                                        //     itemCount: controller
                                        //         .userHomeModelObj
                                        //         .value
                                        //         .gridpngegg1ItemList
                                        //         .length,
                                        //     itemBuilder: (context, index) {
                                        //       Gridpngegg1ItemModel model =
                                        //           controller
                                        //                   .userHomeModelObj
                                        //                   .value
                                        //                   .gridpngegg1ItemList[
                                        //               index];
                                        //       return Gridpngegg1ItemWidget(
                                        //           model,
                                        //           onTapTxtMakeupartist:
                                        //               onTapTxtMakeupartist);
                                        //     }
                                        //     )
                                        //     )
                                        //)
                                      ])))
                        ]))))));
  }

  onTapTxtMakeupartist() {}
}
