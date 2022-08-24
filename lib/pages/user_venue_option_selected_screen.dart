import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/core/utils/user_preferences.dart';
import 'package:moments/model/service_model.dart';
import 'package:moments/pages/user_venue_option_selected_choice_tapped_screen.dart';


class UserVenueOptionSelectedScreen extends StatefulWidget {
  final String selectedCategory;
  
  const UserVenueOptionSelectedScreen({Key? key, required this.selectedCategory}) : super(key: key);
  @override
  State<UserVenueOptionSelectedScreen> createState() => _UserVenueOptionSelectedScreenState();
}

class _UserVenueOptionSelectedScreenState extends State<UserVenueOptionSelectedScreen> {
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
              title: Text(widget.selectedCategory,
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
            body: StreamBuilder<List<Service>>(
        stream:readServices(),
        builder: (context, snapshot) {
          // snapshot.data!.isNotEmpty;

          // if (snapshot.data?.any((element) => element.category==widget.selectedCategory)) {
          if (snapshot.data?.isEmpty == false) {
            final users = snapshot.data!;

            return ListView.builder(
              itemCount: users.length,
             shrinkWrap: true ,
              itemBuilder: (context, index) {
                

                if (users[index].category.toString() ==
                    widget.selectedCategory) {
                  return buildServiceCard(
                      user: users[index], context: context);
                } 
                else{
                  return buildEmptyCard(
                      user: users[index], context: context);
                }
              
              },
            );

            // return ListView.builder(
            //   itemCount: users.length,
            //   shrinkWrap: true ,
            //   itemBuilder: (context, index) => 
            // Padding(
            //               padding: getPadding(left: 7, top: 4, right: 8),
            //               child: Container(
            //                 margin: const EdgeInsets.all(15.0),
            //                 padding: const EdgeInsets.all(6.0),
            //                 decoration: BoxDecoration(
            //                   color: Color(0xffF2F2F2),
            //                   borderRadius: BorderRadius.all(Radius.circular(
            //                           10.0) //                 <--- border radius here
            //                       ),
            //                   boxShadow: [
            //                     BoxShadow(
            //                       color: Colors.black.withOpacity(0.20),
            //                       spreadRadius: 0,
            //                       blurRadius: 4,
            //                       offset: Offset(
            //                           0, 4), // changes position of shadow
            //                     ),
            //                   ],
            //                 ),
            //                 child: Column(
            //                   children: [
            //                     FittedBox(
            //                       fit: BoxFit.fill,
            //                       child: ClipRRect(
            //                         borderRadius: BorderRadius.circular(10),
            //                         child: Image(
            //                             width:
            //                                 MediaQuery.of(context).size.width,
            //                             height: 220,
            //                             image: AssetImage(
            //                                 'assets/images/Hall1.jpg'),
            //                             fit: BoxFit.cover),
            //                       ),
            //                     ),
            //                     Text((users[index].name),
            //                         style: TextStyle(
            //                             color: Colors.black,
            //                             fontSize: 16,
            //                             fontFamily: 'Poppins',
            //                             fontWeight: FontWeight.w400))
            //                   ],
            //                 ),
            //               ),
            //             ),
            //   );
          
        
              


            } 
            else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 8),
                  Container(
                      color: Color(0xFFBCE0FD),
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Icon(
                            Icons.info,
                            color: Color(0xFF2699FB),
                            size: 50,
                          ),
                          Text(
                            'You have no previous history, to\n make your first scan press the button\n below',
                            style: TextStyle(fontSize: 15, height: 1.5),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                  const SizedBox(height: 18),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 15),
                      primary: Color(0xFF2699FB),
                      side: BorderSide(color: Color(0xFF2699FB)),
                    ),
                    label: Text('Scan Now'),
                    icon: Icon(Icons.qr_code_scanner, size: 32),
                    onPressed: () =>
                        DefaultTabController.of(context)!.animateTo(0),
                  )
                ],
              ),
            );
          }
        },
      )
      )
    );
  }
  

  Widget buildServiceCard(
          {required Service user, required BuildContext context}) {
              return InkWell(
                  child: Column(
                    children: [
                      Padding(
                              padding: getPadding(left: 7, top: 4, right: 8),
                              child: Container(
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.all(Radius.circular(
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
                                            width:
                                                MediaQuery.of(context).size.width,
                                            height: 220,
                                            image: Image.network("${user.images[0]}").image,
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Text((user.name),
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 16,
                                           
                                            fontWeight: FontWeight.w500)),
                                    Text((user.district),
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 12,
                                           
                                            fontWeight: FontWeight.w300))
                                  ],
                                ),
                              ),
                            ),   
                    ]),
                  onTap: () {
                    
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UserVenueOptionSelectedChoiceTappedScreen(
                  category: user.category, 
                  name: user.name, 
                  district: user.district, 
                  address: user.address, 
                  price: user.price, 
                  phoneNumber: user.phoneNumber, 
                  description: user.description, 
                  images: user.images,
                  )),
          );
                  },
                   
                );
            }
  Widget buildEmptyCard(
          {required Service user, required BuildContext context}) {
              return  SizedBox();
                    
            }
            
}

Stream<List<Service>> readServices  () => FirebaseFirestore.instance
      // .collection('vendors')
      // .doc('o11ktyBTciMiLYJKgtu3KMgbZCc2')
      .collectionGroup('services')
      // .where("category",isEqualTo: "Venue")
      // .orderBy('check-in', descending: true)
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Service.fromJson(doc.data())).toList());
      
      // .collectionGroup('vendors')
      // .doc('o11ktyBTciMiLYJKgtu3KMgbZCc2')

      // .collectionGroup('services')
      // .where("category", isEqualTo:"Venue")
      // // .orderBy('check-in', descending: true)
      // .snapshots()
      // .map((snapshot) =>
      //     snapshot.docs.map((doc) => Service.fromJson(doc.data())).toList());
  

            // body: Container(
            //     child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //       Expanded(
            //           child: SingleChildScrollView(
            //               child: Container(
            //                   child: Column(
            //                       mainAxisSize: MainAxisSize.min,
            //                       crossAxisAlignment: CrossAxisAlignment.center,
            //                       mainAxisAlignment: MainAxisAlignment.start,
            //                       children: [
            //             //Selva Hall
            //             Padding(
            //               padding: getPadding(left: 7, top: 4, right: 8),
            //               child: Container(
            //                 margin: const EdgeInsets.all(15.0),
            //                 padding: const EdgeInsets.all(6.0),
            //                 decoration: BoxDecoration(
            //                   color: Color(0xffF2F2F2),
            //                   borderRadius: BorderRadius.all(Radius.circular(
            //                           10.0) //                 <--- border radius here
            //                       ),
            //                   boxShadow: [
            //                     BoxShadow(
            //                       color: Colors.black.withOpacity(0.20),
            //                       spreadRadius: 0,
            //                       blurRadius: 4,
            //                       offset: Offset(
            //                           0, 4), // changes position of shadow
            //                     ),
            //                   ],
            //                 ),
            //                 child: Column(
            //                   children: [
            //                     FittedBox(
            //                       fit: BoxFit.fill,
            //                       child: ClipRRect(
            //                         borderRadius: BorderRadius.circular(10),
            //                         child: Image(
            //                             width:
            //                                 MediaQuery.of(context).size.width,
            //                             height: 220,
            //                             image: AssetImage(
            //                                 'assets/images/Hall1.jpg'),
            //                             fit: BoxFit.cover),
            //                       ),
            //                     ),
            //                     Text("Selva Hall",
            //                         style: TextStyle(
            //                             color: Colors.black,
            //                             fontSize: 16,
            //                             fontFamily: 'Poppins',
            //                             fontWeight: FontWeight.w400))
            //                   ],
            //                 ),
            //               ),
            //             ),

            //             //Green grass Hotel
            //             Padding(
            //               padding: getPadding(left: 7, top: 4, right: 8),
            //               child: Container(
            //                 margin: const EdgeInsets.all(15.0),
            //                 padding: const EdgeInsets.all(6.0),
            //                 decoration: BoxDecoration(
            //                   color: Color(0xffF2F2F2),
            //                   borderRadius: BorderRadius.all(Radius.circular(
            //                           10.0) //                 <--- border radius here
            //                       ),
            //                   boxShadow: [
            //                     BoxShadow(
            //                       color: Colors.black.withOpacity(0.20),
            //                       spreadRadius: 0,
            //                       blurRadius: 4,
            //                       offset: Offset(
            //                           0, 4), // changes position of shadow
            //                     ),
            //                   ],
            //                 ),
            //                 child: Column(
            //                   children: [
            //                     FittedBox(
            //                       fit: BoxFit.fill,
            //                       child: ClipRRect(
            //                         borderRadius: BorderRadius.circular(10),
            //                         child: Image(
            //                             width:
            //                                 MediaQuery.of(context).size.width,
            //                             height: 220,
            //                             image: AssetImage(
            //                                 'assets/images/Hall2.jpg'),
            //                             fit: BoxFit.cover),
            //                       ),
            //                     ),
            //                     Text("Green grass Hotel",
            //                         style: TextStyle(
            //                             color: Colors.black,
            //                             fontSize: 16,
            //                             fontFamily: 'Poppins',
            //                             fontWeight: FontWeight.w400))
            //                   ],
            //                 ),
            //               ),
            //             ),

            //             //Raja wedding hall
            //             Padding(
            //               padding: getPadding(left: 7, top: 4, right: 8),
            //               child: Container(
            //                 margin: const EdgeInsets.all(15.0),
            //                 padding: const EdgeInsets.all(6.0),
            //                 decoration: BoxDecoration(
            //                   color: Color(0xffF2F2F2),
            //                   borderRadius: BorderRadius.all(Radius.circular(
            //                           10.0) //                 <--- border radius here
            //                       ),
            //                   boxShadow: [
            //                     BoxShadow(
            //                       color: Colors.black.withOpacity(0.20),
            //                       spreadRadius: 0,
            //                       blurRadius: 4,
            //                       offset: Offset(
            //                           0, 4), // changes position of shadow
            //                     ),
            //                   ],
            //                 ),
            //                 child: Column(
            //                   children: [
            //                     FittedBox(
            //                       fit: BoxFit.fill,
            //                       child: ClipRRect(
            //                         borderRadius: BorderRadius.circular(10),
            //                         child: Image(
            //                             width:
            //                                 MediaQuery.of(context).size.width,
            //                             height: 220,
            //                             image: AssetImage(
            //                                 'assets/images/Hall3.jpg'),
            //                             fit: BoxFit.cover),
            //                       ),
            //                     ),
            //                     Text("Raja Wedding Hall",
            //                         style: TextStyle(
            //                             color: Colors.black,
            //                             fontSize: 16,
            //                             fontFamily: 'Poppins',
            //                             fontWeight: FontWeight.w400))
            //                   ],
            //                 ),
            //               ),
            //             )
            //           ]))))
            //     ])
            //     )
  //               ));
  // }

//   onTapColumnbridalposesph() {}

//   onTapImgArrowleft() {
//     Get.back();
//   }
// }
