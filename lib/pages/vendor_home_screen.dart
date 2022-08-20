import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/core/utils/user_preferences.dart';

import 'user_vendor_account_screen.dart';
import 'vendor_adding_new_service_screen.dart';

Future<void> userDetailFetchSharedPreference() async {
  var name;
  var email;
  //var phone;
  await FirebaseFirestore.instance
      .collection('vendors')
      .doc(UserPreferences.getUserID())
      .get()
      .then(
    (DocumentSnapshot) {
      name = (DocumentSnapshot.data()!['name'].toString());
      email = (DocumentSnapshot.data()!['email'].toString());
      //phone = (DocumentSnapshot.data()!['phoneNumber'].toString());
      //return name = (DocumentSnapshot.data()!['name'].toString());
    },
  );
  await UserPreferences.setUserName(name);
  await UserPreferences.setEmail(email);
  //await UserPreferences.setPhoneNumber(phone);
  
}
class VendorHomeScreen extends StatefulWidget {
  @override
  State<VendorHomeScreen> createState() => _VendorHomeScreenState();
}

class _VendorHomeScreenState extends State<VendorHomeScreen> {
  @override
  Widget build(BuildContext context) {
        userDetailFetchSharedPreference();
// print(UserPreferences.getEmail());
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
                  onPressed:() =>  Navigator.pushReplacement(context,
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
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffAF0B2C),
                            elevation: 0,
                            padding: EdgeInsets.fromLTRB(19, 13, 19, 13),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onPressed: () => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (_) =>
                                      VendorAddingNewServiceScreen())),
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
}
