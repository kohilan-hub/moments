import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:moments/core/app_export.dart';

class UserVenueOptionSelectedChoiceTappedScreen extends StatelessWidget {
  final String category;
  final String name;
  final String district;
  final String address;
  final double price;
  final String phoneNumber;
  final String description;
  final List<dynamic> images;

  const UserVenueOptionSelectedChoiceTappedScreen({
    Key? key,
    required this.category,
    required this.name,
    required this.district,
    required this.address,
    required this.price,
    required this.phoneNumber,
    required this.description,
    required this.images,
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
           
                child: Container(
                    
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment:
                            MainAxisAlignment.start,
                        children: [
                          Container(
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
                                ClipRRect(
                                    borderRadius:
                                  BorderRadius.circular(10),
                                    
                                child: 
                                //image slider
                                      CarouselSlider.builder(
                                      
                                    options: CarouselOptions(
                                      
                                      height:200,
                                      autoPlay: true,
                                      viewportFraction: 1,
                                    
                                      ),
                                    itemCount: images.length,
                                    itemBuilder: ((context, index, realIndex) {
                                      final urlImage=images[index];

                                      return buildImage(urlImage,index,context);
                                    }),
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
                                      top: 12,
                                      right: 17),
                                  child: Text("Description",
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
                                        Text("$description",
                                            overflow: TextOverflow
                                                .ellipsis,
                                            textAlign:
                                                TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsLight12
                                                .copyWith()),
                                        
                                      ]))),
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
                    onPressed: () async => { 
                    if(Platform.isIOS){
    //iOS devices
    await canLaunchUrl(Uri.parse('https://wa.me/${phoneNumber}?text=Hey kohilan, i have seen your venue service on moments app, I am interested about your venue service,  I would like to get to know more about your service, Could you tell me more about it?'))
                      .then((Value) => launchUrl(Uri.parse('https://wa.me/${phoneNumber}?text=Hey ${name}, I have seen your ${category} service on moments app, I am interested about your ${category} service,  I would like to get to know more about your service, Could you tell me more about it?')))? print("WhatsApp is installed on the device"):
                      ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: new Text("WhatsApp is not installed on the device")))
    }
    //android, web
    else{
      await canLaunchUrl(Uri.parse('whatsapp://send?phone=${phoneNumber}&text=Hey kohilan, i have seen your venue service on moments app, I am interested about your venue service,  I would like to get to know more about your service, Could you tell me more about it?'))
                      .then((Value) => launchUrl(Uri.parse('whatsapp://send?phone=${phoneNumber}&text=Hey ${name}, I have seen your ${category} service on moments app, I am interested about your ${category} service,  I would like to get to know more about your service, Could you tell me more about it?')))? print("WhatsApp is installed on the device"):
                      ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: new Text("WhatsApp is not installed on the device")))
    }
                    },

                    

                    
                  
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
                          
                        ])))));
  }


  Widget buildImage(urlImage, int index,BuildContext context) => SizedBox(
    height: 220,width:MediaQuery.of(context).size.width,
    child: Image.network(urlImage,fit:BoxFit.cover));

}
