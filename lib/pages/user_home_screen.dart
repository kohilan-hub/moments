import 'package:flutter/material.dart';
import 'package:moments/core/app_export.dart';

class UserHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text("Moments",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtVollkornRomanRegular18.copyWith()),
              actions: <Widget>[
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.account_circle_outlined,
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
                                  //margin: getMargin(bottom: 10),
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
                                            child: Stack(children: [
                                          Align(
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .outlineBlack900
                                                      .copyWith(
                                                    borderRadius: BorderRadius
                                                        .only(
                                                            bottomRight:
                                                                Radius.circular(
                                                                    50.0),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    50.0)),
                                                  ),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: Center(
                                                              child: Text(
                                                                  "1.Research venue option\n2.Choose your suitable makeup\n3.Make a best catering services\n4.Select your suitable photography\n5.Find you available pandits\n6.Quickly ordered your tasty wedding cake",
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular10
                                                                      .copyWith()),
                                                            ))
                                                      ]))),
                                        ]))),
                                    Expanded(
                                      child: GridView(
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2),
                                        children: <Widget>[
                                          Container(
                                            margin: const EdgeInsets.all(15.0),
                                            padding: const EdgeInsets.all(3.0),
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
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(15.0),
                                            padding: const EdgeInsets.all(3.0),
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
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(15.0),
                                            padding: const EdgeInsets.all(3.0),
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
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(15.0),
                                            padding: const EdgeInsets.all(3.0),
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
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(15.0),
                                            padding: const EdgeInsets.all(3.0),
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
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(15.0),
                                            padding: const EdgeInsets.all(3.0),
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
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ])))
                        ]))))));
  }

  onTapTxtMakeupartist() {}
}
