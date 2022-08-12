import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';

class UserVenueOptionSelectedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                margin: getMargin(bottom: 19),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
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
                                    decoration: AppDecoration.fillRed900,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapImgArrowleft();
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 12,
                                                      bottom: 11),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          19.00),
                                                      width: getHorizontalSize(
                                                          11.00),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgArrowleftWhiteA700,
                                                          fit: BoxFit.fill)))),
                                          Padding(
                                              padding:
                                                  getPadding(top: 8, bottom: 7),
                                              child: Text("Makeup Artist",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtVollkornRomanRegular20
                                                      .copyWith())),
                                          Padding(
                                              padding: getPadding(
                                                  top: 13,
                                                  right: 11,
                                                  bottom: 12),
                                              child: Container(
                                                  height: getSize(17.00),
                                                  width: getSize(17.00),
                                                  child: SvgPicture.asset(
                                                      ImageConstant
                                                          .imgSearch17X17,
                                                      fit: BoxFit.fill)))
                                        ]))),
                            Padding(
                              padding: getPadding(left: 7, top: 4, right: 8),
                              child: Container(
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          10.0) //                 <--- border radius here
                                      ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.20),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    FittedBox(
                                      fit: BoxFit.fill,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 220,
                                            image: AssetImage(
                                                'assets/images/example_makup.jpg'),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Text("Zintrella Makeup",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400))
                                  ],
                                ),
                              ),
                              // child: Obx(() => ListView.builder(
                              //     physics: NeverScrollableScrollPhysics(),
                              //     shrinkWrap: true,

                              //     // itemBuilder: (context, index) {
                              //     //   ListbridalposesphItemModel model = controller
                              //     //       .userMakeupArtistOptionSelectedModelObj
                              //     //       .value
                              //     //       .listbridalposesphItemList[index];
                              //     //   return ListbridalposesphItemWidget(model,
                              //     //       onTapColumnbridalposesph:
                              //     //           onTapColumnbridalposesph);
                              //     // }
                              //     ))
                            )
                          ]))))
                    ]))));
  }

  onTapColumnbridalposesph() {}

  onTapImgArrowleft() {
    Get.back();
  }
}
