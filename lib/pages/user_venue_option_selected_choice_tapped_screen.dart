import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:moments/core/app_export.dart';
import 'package:url_launcher/url_launcher.dart';

class UserVenueOptionSelectedChoiceTappedScreen extends StatelessWidget {
  final String category;
  final String name;
  final String district;
  final String address;
  final double price;
  final String phoneNumber;

  const UserVenueOptionSelectedChoiceTappedScreen({
    Key? key,
    required this.category,
    required this.name,
    required this.district,
    required this.address,
    required this.price,
    required this.phoneNumber,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed:()  async { Navigator.pop(context);},
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
              centerTitle: true,
              title: Text(category,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtVollkornRomanRegular18.copyWith()),
              actions: <Widget>[
                // IconButton(
                //   onPressed: null,
                //   icon: Icon(
                //     Icons.search,
                //     size: 30.0,
                //     color: Colors.white,
                //   ),
                // ),
              ],
            ),
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Container(
                    
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
                                                                    name,
                                                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 16,
                                       
                                        fontWeight: FontWeight.w500))
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
                                                  Container(margin: EdgeInsets.only(bottom: 4),
                                                    child: Icon(  Icons.pin_drop_outlined,
                                                    size: 14.0,
                                                    color:ColorConstant.deepOrangeA100,),
                                                  ),
                                                  
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 2),
                                                      child: Text(district,
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
                                                address,
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
                                            child: Text("Meal Details",
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
                                                  Text("Veg food",
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
                                                          "Rs.${price.toString()}/=",
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
                                        //width:1,
                                        
                                        margin: EdgeInsets.only(top: 5,bottom: 5,left:17,right: MediaQuery.of(context).size.width / 2.5),
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
                                                  Text("Non-Veg food",
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
                                                          "Rs.${(price+100).toString()}/=",
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
                                                
                                                Expanded(
                                                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize:Size.fromWidth(230) ,
                        shadowColor: ColorConstant.gray1007c,
                        primary: ColorConstant.gray1007c,
                        elevation: 1,
                        padding: EdgeInsets.fromLTRB(25, 13, 25, 13),
                        shape: 
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                  ),
                      ),
                      onPressed: () => _launchWhatsapp(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Contact now',
                              style: GoogleFonts.poppins(color:Colors.black,fontSize: 18,fontWeight: FontWeight.w400)),
                           Image.asset(
                      'assets/images/Whatsapp.png',width: 40,height: 40,
                    ),
                          
                        ],
                      ),
                    ),
                                                    ],
                                                  ),
                                                ),
                                    
                                  ])))
                    ])))));
  }

  _launchWhatsapp(ctx) async {
    var whatsapp = "+91XXXXXXXXXX";
    var whatsappAndroid =Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
    if (await canLaunchUrl(whatsappAndroid)) {
        await launchUrl(whatsappAndroid);
    } else {
        ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          content: Text("WhatsApp is not installed on the device"),
        ),
      );
    }
}
}
