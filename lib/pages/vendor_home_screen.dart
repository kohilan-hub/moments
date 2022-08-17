import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kohilan_s_application1/core/app_export.dart';

import 'vendor_adding_new_service_screen.dart';

class VendorHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text("Services",
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
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Container(
                        margin: getMargin(
                            left: 82, top: 207, right: 80, bottom: 261),
                        child: RaisedButton.icon(
                            padding: EdgeInsets.fromLTRB(19, 13, 19, 13),
                            color: Color(0xffAF0B2C),
                            onPressed: () => Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                                    builder: (_) =>
                                        VendorAddingNewServiceScreen())),
                            icon: Icon(
                              Icons.add_circle_outline,
                              color: Colors.white,
                            ),
                            label: Text('Add Service',
                                style: AppStyle.txtMulishSemiBold16WhiteA700
                                    .copyWith())),
                      ),
                    ]))))));
  }
}
