import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';

class UserSearchItemNotFoundScreen extends StatelessWidget {
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
              title: Text("Colombo",
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
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
