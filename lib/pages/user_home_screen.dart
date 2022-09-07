import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/core/utils/user_preferences.dart';
import 'package:moments/pages/user_vendor_account_screen.dart';
import 'package:moments/pages/user_venue_option_selected_screen.dart';

Future<void> userDetailFetchSharedPreference() async {
  var name;
  var email;
  var phoneNumber;
  var roleState;

  await FirebaseFirestore.instance
      .collection('users')
      .doc(UserPreferences.getUserID())
      .get()
      .then(
    (DocumentSnapshot) {
      name = (DocumentSnapshot.data()!['name'].toString());
      email = (DocumentSnapshot.data()!['email'].toString());
      phoneNumber = (DocumentSnapshot.data()!['phoneNumber'].toString());
      roleState = (DocumentSnapshot.data()!['roleState']);
    },
  );
  await UserPreferences.setUserName(name);
  await UserPreferences.setEmail(email);
  await UserPreferences.setPhoneNumber(phoneNumber); 
  await UserPreferences.setRoleState(roleState); 
}

class UserHomeScreen extends StatefulWidget {
  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    userDetailFetchSharedPreference();
    return SafeArea(
        child: ScreenUtilInit(
          builder: ((context, child) => 
          Scaffold(
              appBar: AppBar(
                elevation: 0,
                centerTitle: true,
                title: Text("Moments",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtVollkornRomanRegular18.copyWith()),
                actions: <Widget>[
                  IconButton(
                    onPressed:() =>  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserVendorAccountScreen())),
                    icon: Icon(
                      Icons.account_circle_outlined,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              backgroundColor: ColorConstant.whiteA700,
              body: 
              Column(
                  mainAxisSize: MainAxisSize.max,    
                  mainAxisAlignment:
                      MainAxisAlignment.start,
                  children: [
                Container(
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
                    child: Container(
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
                        ))),

                Expanded(
                  child: SingleChildScrollView(
                    child: Expanded
                    (
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      
                                
                        children:[
                          SizedBox(height: 20.h,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 90.h,
                                width: 120.w,
                                //margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          10.0) //                 <--- border radius here
                                      ),
                                ),
                                child: InkWell(
                                  onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: 
                  (_) => UserVenueOptionSelectedScreen(selectedCategory: 'Makeup Artist',))),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Image(
                                            width: 70.w,
                                            height: 60.h,
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'assets/images/Makeup Artist.png')),
                                        Text("Makeup Artist",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight:
                                                    FontWeight.w400))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            
                          Container(
                                height: 90.h,
                                width: 120.w,
                            //margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      10.0) //                 <--- border radius here
                                  ),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: 
                  (_) => UserVenueOptionSelectedScreen(selectedCategory: 'Photography',))),
                              child: Center(
                                child: Column(
                                  children: [
                                    Image(
                                        width: 70.w,
                                        height: 60.h,
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/Photography.png')),
                                    Text("Photography",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                                FontWeight.w400))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          ],
                          ),
                          SizedBox(height: 20.h,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 90.h,
                                width: 120.w,
                                
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          10.0) //                 <--- border radius here
                                      ),
                                ),
                                child: InkWell(
                                  onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: 
                  (_) => UserVenueOptionSelectedScreen(selectedCategory: 'Venue',))),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Image(
                                            width: 70.w,
                                            height: 60.h,
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'assets/images/Venue.png')),
                                        Text("Venue",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight:
                                                    FontWeight.w400))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                           
                          Container(
                                height: 90.h,
                                width: 120.w,
                            
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      10.0) //                 <--- border radius here
                                  ),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: 
                  (_) => UserVenueOptionSelectedScreen(selectedCategory: 'Caterers',))),
                              child: Center(
                                child: Column(
                                  children: [
                                    Image(
                                        width: 70.w,
                                        height: 60.h,
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/Caterers.png')),
                                    Text("Caterers",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                                FontWeight.w400))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          ],
                          ),
                          SizedBox(height: 20.h,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 90.h,
                                width: 120.w,
                                
                                padding: const EdgeInsets.all(3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          10.0) //                 <--- border radius here
                                      ),
                                ),
                                child: InkWell(
                                  onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: 
                  (_) => UserVenueOptionSelectedScreen(selectedCategory: 'Cake',))),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Image(
                                            width: 70.w,
                                            height: 60.h,
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'assets/images/Cake.png')),
                                        Text("Cake",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12.sp,
                                                fontFamily: 'Poppins',
                                                fontWeight:
                                                    FontWeight.w400))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            
                          Container(
                                height: 90.h,
                                width: 120.w,
                            
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(
                                      10.0) //                 <--- border radius here
                                  ),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: 
                  (_) => UserVenueOptionSelectedScreen(selectedCategory: 'Pandits',))),
                              child: Center(
                                child: Column(
                                  children: [
                                    Image(
                                        width: 70.w,
                                        height: 60.h,
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/Pandits.png')),
                                    Text("Pandits",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                                FontWeight.w400))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]))
        ),
        designSize: const Size(320, 568),
        )
    );

  }

  onTapTxtMakeupartist() {}
}
