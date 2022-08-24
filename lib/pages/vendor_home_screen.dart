import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/core/utils/user_preferences.dart';
import 'package:moments/model/service_model.dart';
import 'package:moments/pages/vendor_adding_new_service_screen.dart';
import 'package:moments/pages/vendor_editing_a_existing_service_screen.dart';
import 'package:moments/pages/vendor_home_screen.dart';

import 'user_vendor_account_screen.dart';

Future<void> userDetailFetchSharedPreference() async {
  var name;
  var email;
  var phoneNumber;
  
  await FirebaseFirestore.instance
      .collection('vendors')
      .doc(UserPreferences.getUserID())
      .get()
      .then(
    (DocumentSnapshot) {
      name = (DocumentSnapshot.data()!['name'].toString());
      email = (DocumentSnapshot.data()!['email'].toString());
      phoneNumber = (DocumentSnapshot.data()!['phoneNumber'].toString());
    },
  );
  await UserPreferences.setUserName(name);
  await UserPreferences.setEmail(email);
  await UserPreferences.setPhoneNumber(phoneNumber);
}

class VendorHomeScreen extends StatefulWidget {
  @override
  State<VendorHomeScreen> createState() => _VendorHomeScreenState();
}

class _VendorHomeScreenState extends State<VendorHomeScreen> {
  var docId;

  Future<void> loadDocId(String command,Service user) async {
    await FirebaseFirestore.instance
        .collection('vendors')
        .doc(UserPreferences.getUserID())
        .collection('services')
        //check in unique in a entry because qrID can be same for one place
        .where("name", isEqualTo: user.name)
        .where("phoneNumber", isEqualTo: user.phoneNumber)
        .where("category", isEqualTo: user.category)
        .get()
        .then(
          (QuerySnapshot snapshot) => {
            snapshot.docs.forEach((f) {
              docId = (f.reference.id);
            }),
          },
        );
    
    print("hijkl: $docId");

    final docEntry = await FirebaseFirestore.instance
        .collection('vendors')
        .doc(UserPreferences.getUserID())
        .collection('services')
        .doc(docId);

    if(command=='delete')
      await docEntry.delete();

    if(command=='edit')
      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VendorEditingAExistingServiceScreen(docEntry: docEntry, user: user)));


    
    //await docEntry.update({'check-out': myTimeStamp});
  }
  

  @override
  Widget build(BuildContext context) {
    userDetailFetchSharedPreference();
    return Scaffold(
          body:  SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leadingWidth: 90,
              leading: Container(
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(3),
                ),
                margin: EdgeInsets.all(10),
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary:  Color(0xffBF1235),
                        elevation: 0, padding: EdgeInsets.all(0)),
                    onPressed:() =>  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VendorAddingNewServiceScreen())),
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
            // Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
        StreamBuilder<List<Service>>(
        stream: readServices(),
        builder: (context, snapshot) {
          if (snapshot.data?.isEmpty == false) {//should be false, may be true add for testing 
            final users = snapshot.data!;
  
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
  
            return buildService(users[index],context);
            
  
            // if (users[index].checkOut.toString() ==
            //     "1998-10-03 03:00:00.000") {
            //   return buildEntryNotCheckedOut(
            //       user: users[index], context: context);
            // } else {
            //   return buildEntry(users[index]);
            // }
              },
            );
          } else {
            return newVendor(context);
          }
        },
      ),
              
  
             
          
          
             // underServicesAddButton(context),
           
  
    //this is it.
                )
                )
  );
  }

  Column underServicesAddButton(BuildContext context) {
    return Column(
              children: [
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
                onPressed: () => Navigator.of(context)
                            .push(MaterialPageRoute(
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
              ],
            );
  }

  Container newVendor(BuildContext context) {
    return Container(
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
                            .push(MaterialPageRoute(
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
                  ]));
  }

Stream<List<Service>> readServices() => FirebaseFirestore.instance
      .collection('vendors')
      .doc(UserPreferences.getUserID())
      .collection('services')
   
      // .orderBy('check-in', descending: true)
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Service.fromJson(doc.data())).toList());

  deletingConfirmAlertBox(BuildContext context, Service user) {
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
          Text(user.name,
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
                  onPressed: () async {
                    await loadDocId("delete",user);
                    Navigator.of(ctx).pop();
                  },
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

   Widget buildService(Service user,BuildContext context) =>
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
                                  AssetImage('assets/images/${user.category}.png'),
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
                              Text(user.name,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400)),
                              RichText(
                                  text:  TextSpan(children: [
                                TextSpan(
                                    text: 'Category: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xffFF4521))),
                                TextSpan(
                                    text: user.category,
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
                                      onPressed: () async {
                                        await loadDocId("edit",user);
                                      },
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
                                      onPressed: () async {
                                        
                                        deletingConfirmAlertBox(context,user);
                                      },
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
                  );

  onTapBtnEdit() {}

  onTapBtnDelete() {}

  onTapRowplus() {}

  onTapRowplus1() {}
}
