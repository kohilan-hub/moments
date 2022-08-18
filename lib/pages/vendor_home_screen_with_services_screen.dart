import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/pages/vendor_home_screen.dart';

class VendorHomeScreenWithServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leadingWidth: 90,
              leading: Container(
                decoration: BoxDecoration(
                  color: Color(0xffBF1235),
                  borderRadius: BorderRadius.circular(3),
                ),
                margin: EdgeInsets.all(10),
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, padding: EdgeInsets.all(0)),
                    onPressed: null,
                    icon: Icon(
                      Icons.add_circle_outline,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    label: Text('Add',
                        style:
                            AppStyle.txtPoppinsRegular12WhiteA700.copyWith())),
              ),
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
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                  //Zintrella Makeup
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                              image:
                                  AssetImage('assets/images/Makeup Artist.png'),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        padding:
                                            EdgeInsets.fromLTRB(10, 6, 10, 6),
                                        fixedSize: Size.fromWidth(90),
                                        primary: Color(0xffDFDDDE),
                                      ),
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
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        fixedSize: Size.fromWidth(90),
                                        padding:
                                            EdgeInsets.fromLTRB(10, 6, 10, 6),
                                        primary:
                                            Color(0xffFF4521).withOpacity(0.68),
                                      ),
                                      onPressed: () =>
                                          deletingConfirmAlertBox(context),
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
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        padding:
                                            EdgeInsets.fromLTRB(10, 6, 10, 6),
                                        fixedSize: Size.fromWidth(90),
                                        primary: Color(0xffDFDDDE),
                                      ),
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
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        fixedSize: Size.fromWidth(90),
                                        padding:
                                            EdgeInsets.fromLTRB(10, 6, 10, 6),
                                        primary:
                                            Color(0xffFF4521).withOpacity(0.68),
                                      ),
                                      onPressed: () =>
                                          deletingConfirmAlertBox(context),
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
                      decoration: BoxDecoration(color: ColorConstant.gray401)),
                  Container(
                    margin: getMargin(left: 82, top: 20, right: 80),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffAF0B2C),
                        elevation: 0,
                        padding: EdgeInsets.fromLTRB(19, 13, 19, 13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (_) => VendorHomeScreen())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                          ),
                          Text('Add Service',
                              style: AppStyle.txtMulishSemiBold16WhiteA700
                                  .copyWith())
                        ],
                      ),
                    ),
                  ),
                ]))))));
  }

  deletingConfirmAlertBox(BuildContext context) {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xff950320), width: 1.5),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        content: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("Are you sure?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400)),
          Text("Deleting",
              style: TextStyle(
                  color: Color(0xffAF0B2C),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400)),
          Text("Zintrella Makeup",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff2bff4520),
                    elevation: 0,
                    padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () => {Navigator.of(ctx).pop()},
                  child: Text('Yes',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Mulish"))),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffDFDDDE),
                    elevation: 0,
                    padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () => {Navigator.of(ctx).pop()},
                  child: Text('No',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Mulish"))),
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
