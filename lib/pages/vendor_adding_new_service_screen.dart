import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/core/utils/user_preferences.dart';
import 'package:moments/widgets/custom_button.dart';
import 'package:moments/widgets/custom_icon_button.dart';

class VendorAddingNewServiceScreen extends StatefulWidget {
  @override
  State<VendorAddingNewServiceScreen> createState() => _VendorAddingNewServiceScreenState();
}

class _VendorAddingNewServiceScreenState extends State<VendorAddingNewServiceScreen> {
   List<PlatformFile?> pickedFile=List.filled(3, null, growable: false);
  
  Future uploadFile() async{
    final path1='files/${pickedFile[0]!.name}';
    final file1= File(pickedFile[0]!.path!);

    final ref1=FirebaseStorage.instance.ref().child(path1);
    ref1.putFile(file1);
    //file 2
    final path2='files/${pickedFile[1]!.name}';
    final file2= File(pickedFile[1]!.path!);

    final ref2=FirebaseStorage.instance.ref().child(path2);
    ref2.putFile(file2);
    // file 3
    final path3='files/${pickedFile[2]!.name}';
    final file3= File(pickedFile[2]!.path!);

    final ref3=FirebaseStorage.instance.ref().child(path3);
    ref3.putFile(file3);
  }

  Future selectFile(int i) async{
    final result=await FilePicker.platform.pickFiles();
    if(result==null)return;

    setState(() {
      pickedFile[i]=result.files.first;
    });
  
  }

  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final nameEditingController = TextEditingController();
  final categoryEditingController = TextEditingController();
  final addressEditingController = TextEditingController();
  final districtEditingController = TextEditingController();
  final phoneNumberEditingController = TextEditingController();
  final descriptionEditingController = TextEditingController();
  final priceEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController();

  //category field
  late String dropdownValue;

  @override
  Widget build(BuildContext context) {
    //first name field
    final nameField = TextFormField(
      
      style: GoogleFonts.poppins(fontSize: 18
      ,color: Colors.black),
      cursorColor: Color(0xff950320),
      autofocus: false,
      controller: nameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("First name can not be empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter valid name(Min.3 Character");
        }
      },
      onSaved: (value) {
        nameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        

        label: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Name",
                                              style: GoogleFonts.poppins(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "*",
                                              style: GoogleFonts.mulish(
                                                  color: ColorConstant
                                                      .deepOrange600,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.left),
                                        floatingLabelBehavior: FloatingLabelBehavior.always ,
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Your Brand Name",
        hintStyle: GoogleFonts.poppins(fontSize: 18, color: Color(0xffBEC1C9)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xffBEC1C9)),
        ),

        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xff950320)),
        ),

        //errorBorder: Is activated when there is some error (i.e. a failed validate)
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.black)),
      ),
    );

    //category field
    
    final categoryField = 
DropdownButtonFormField(
  style: GoogleFonts.poppins(fontSize: 18
      ,color: Colors.black),
  
      autofocus: false,
    
 
      // validator: (value) {
      //   RegExp regex = RegExp(r'^.{3,}$');
      //   if (value!.isEmpty) {
      //     return ("First name can not be empty");
      //   }
      //   if (!regex.hasMatch(value)) {
      //     return ("Enter valid name(Min.3 Character");
      //   }
      // },
      // onSaved: (value) {
      //   nameEditingController.text = value!;
      // },
      //
      //textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        

        label: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Category",
                                              style: GoogleFonts.poppins(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "*",
                                              style: GoogleFonts.mulish(
                                                  color: ColorConstant
                                                      .deepOrange600,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.left),
                                        floatingLabelBehavior: FloatingLabelBehavior.always ,
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Select Your Category",
        hintStyle: GoogleFonts.poppins(fontSize: 18, color: Color(0xffBEC1C9)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xffBEC1C9)),
        ),

        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xff950320)),
        ),

        //errorBorder: Is activated when there is some error (i.e. a failed validate)
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.black)),
      ),
  

  //dropdownColor: Colors.greenAccent,
  //value: dropdownValue,
  onChanged: (String? newValue) {
    setState(() {
      dropdownValue = newValue!;
    });
  },
  items: <String>['Makeup Artist', 'Photography', 'Venue', 'Caterers','Cake','Pandits'].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      //alignment: AlignmentDirectional.lerp(a, b, t),
      value: value,
      child: Text(
        value,
        style: GoogleFonts.poppins(fontSize: 18
      ,color: Colors.black),
      ),
    );
  }).toList(),
);

final addressField = TextFormField(
      
      style: GoogleFonts.poppins(fontSize: 18
      ,color: Colors.black),
      cursorColor: Color(0xff950320),
      autofocus: false,
      controller: addressEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("Address can not be empty");
        }
      },
      onSaved: (value) {
        addressEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        

        label: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Address",
                                              style: GoogleFonts.poppins(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "*",
                                              style: GoogleFonts.mulish(
                                                  color: ColorConstant
                                                      .deepOrange600,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.left),
                                        floatingLabelBehavior: FloatingLabelBehavior.always ,
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Your Address",
        hintStyle: GoogleFonts.poppins(fontSize: 18, color: Color(0xffBEC1C9)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xffBEC1C9)),
        ),

        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xff950320)),
        ),

        //errorBorder: Is activated when there is some error (i.e. a failed validate)
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.black)),
      ),
    );

final districtField = TextFormField(
      
      style: GoogleFonts.poppins(fontSize: 18
      ,color: Colors.black),
      cursorColor: Color(0xff950320),
      autofocus: false,
      controller: districtEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("First name can not be empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter valid name(Min.3 Character");
        }
      },
      onSaved: (value) {
        nameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        

        label: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "District",
                                              style: GoogleFonts.poppins(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "*",
                                              style: GoogleFonts.mulish(
                                                  color: ColorConstant
                                                      .deepOrange600,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.left),
                                        floatingLabelBehavior: FloatingLabelBehavior.always ,
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Your District",
        hintStyle: GoogleFonts.poppins(fontSize: 18, color: Color(0xffBEC1C9)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xffBEC1C9)),
        ),

        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xff950320)),
        ),

        //errorBorder: Is activated when there is some error (i.e. a failed validate)
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.black)),
      ),
    );

final phoneNumberField = TextFormField(
      
      style: GoogleFonts.poppins(fontSize: 18
      ,color: Colors.black),
      cursorColor: Color(0xff950320),
      autofocus: false,
      controller: phoneNumberEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
        if (value!.isEmpty) {
          return ("Phone number is required");
        }
        if (!regex.hasMatch(value)) {
          return ("Please enter valid phone number");
        }
      },
      onSaved: (value) {
        phoneNumberEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        

        label: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Phone Number",
                                              style: GoogleFonts.poppins(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "*",
                                              style: GoogleFonts.mulish(
                                                  color: ColorConstant
                                                      .deepOrange600,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.left),
                                        floatingLabelBehavior: FloatingLabelBehavior.always ,
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Your Phone Number",
        hintStyle: GoogleFonts.poppins(fontSize: 18, color: Color(0xffBEC1C9)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xffBEC1C9)),
        ),

        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xff950320)),
        ),

        //errorBorder: Is activated when there is some error (i.e. a failed validate)
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.black)),
      ),
    );

final descriptionField = TextFormField(
      maxLines: 3,
      style: GoogleFonts.poppins(fontSize: 18
      ,color: Colors.black),
      cursorColor: Color(0xff950320),
      autofocus: false,
      controller: descriptionEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("Address can not be empty");
        }
      },
      onSaved: (value) {
        descriptionEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        

        label: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Description",
                                              style: GoogleFonts.poppins(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "*",
                                              style: GoogleFonts.mulish(
                                                  color: ColorConstant
                                                      .deepOrange600,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.left),
                                        floatingLabelBehavior: FloatingLabelBehavior.always ,
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Tell about your service",
        hintStyle: GoogleFonts.poppins(fontSize: 18, color: Color(0xffBEC1C9)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xffBEC1C9)),
        ),

        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xff950320)),
        ),

        //errorBorder: Is activated when there is some error (i.e. a failed validate)
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.black)),
      ),
    );

final priceField = TextFormField(
     
      style: GoogleFonts.poppins(fontSize: 18
      ,color: Colors.black),
      cursorColor: Color(0xff950320),
      autofocus: false,
      controller: priceEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("First name can not be empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter valid name(Min.3 Character");
        }
      },
      onSaved: (value) {
        nameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        

        label: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Price",
                                              style: GoogleFonts.poppins(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "*",
                                              style: GoogleFonts.mulish(
                                                  color: ColorConstant
                                                      .deepOrange600,
                                                  fontSize: getFontSize(16),
                                                  
                                                  fontWeight: FontWeight.w600))
                                        ]),
                                        textAlign: TextAlign.left),
                                        floatingLabelBehavior: FloatingLabelBehavior.always ,
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter the price here",
        hintStyle: GoogleFonts.poppins(fontSize: 18, color: Color(0xffBEC1C9)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xffBEC1C9)),
        ),

        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          borderSide: BorderSide(width: 1, color: Color(0xff950320)),
        ),

        //errorBorder: Is activated when there is some error (i.e. a failed validate)
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.black)),
      ),
    );

    //height of the sizedBox
    double h=30;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed:() { Navigator.pop(context);},
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
              actions: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: MaterialButton(
                    onPressed:() { Navigator.pop(context);},
                    child: Icon(
                      Icons.close_rounded,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    shape: CircleBorder(
                        side: BorderSide(width: 3, color: Colors.white)),
                  ),
                ),
              ],
            ),
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Text("Add service",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18
                          .copyWith()),
                  Text(
                      "To start adding any service, you need the name, category, price and picture",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .txtPoppinsRegular14Gray700
                          .copyWith()),
                           
                           SizedBox(height: h), 
                           nameField, 
                           SizedBox(height: h), 
                           categoryField,
                           SizedBox(height: h),
                           addressField,
                           SizedBox(height: h),
                           districtField,
                           SizedBox(height: h),
                           phoneNumberField,
                           SizedBox(height: h),
                           descriptionField,
                           SizedBox(height: h),
                           priceField,
                           SizedBox(height: h),
                           
                  Text(
                      "Drop images here,",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style:GoogleFonts.poppins(fontSize:18,color:Colors.black)
                      ),
                          Text(
                      "Tap below boxes to browse",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(fontSize:18,color:Color(0xffAF0B2C))
                          ),
                          
                  SizedBox(height: 10), 

                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        (pickedFile[0] == null) ?imgPickButton(0) : displayImg(0),
                        (pickedFile[1] == null) ?imgPickButton(1) : displayImg(1),
                        (pickedFile[2] == null) ?imgPickButton(2) : displayImg(2),
                      

          
                     
                    ],
                  ),
                  
                  SizedBox(height: 10), 
                  
                  Text(
                      "Use quality pictures for the product. It will be used for products adverts",
                      maxLines: null,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(fontSize:18,color:Color(0xff555B6A))
                          ),

                          SizedBox(height: 20), 

                          Center(
                            child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              //fixedSize: Size.fromWidth(265),
                              primary: Color(0xffAF0B2C),
                              elevation: 0,
                              padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            onPressed: () {
                             // uploadFile();
                            sendDataToDB();
                            Navigator.of(context).pop();},
                            child: Text('Save',
                                style: AppStyle.txtMulishSemiBold16WhiteA700
                                    .copyWith()),
                        ),
                          ),
                          SizedBox(height: 20),                  
                ]))));
  }

  displayImg(int i) {
     return Container(width: 100, height: 100,decoration: BoxDecoration(
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image:Image.file(File(pickedFile[i]!.path!)).image,fit: BoxFit.cover
                                    ),
                        //child: Image.file(File(pickedFile!.path!),fit: BoxFit.fill,),
                      ));
                    
  }

  imgPickButton(int i) {
     return Container(decoration: BoxDecoration(
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(10),
                                    
                                    ),
                        child: SizedBox(width: 100, height: 100,
                          child: IconButton(alignment: Alignment.center,
                                 onPressed:()=>selectFile(i),
                                 icon: Icon(
                                 Icons.add_rounded,
                                 size: 80.0,
                                 color: Colors.black,
                                 ),
                                   ),
                        ),
                                           );
                     
  }

  // void save(String firstName, String email, String nic, String address,
  //     String phoneNumber) async {
  //   if (_formKey.currentState!.validate()) {
  //     await _auth
  //         .createUserWithEmailAndPassword(
  //             email: email, password: passwordEditingController.text)
  //         .then((value) => {postDetailsToFirestore()})
  //         .catchError((e) {
  //       Fluttertoast.showToast(msg: e!.message);
  //     });
  //   }
  // }
  
  sendDataToDB() async {
final imageArray = <String, String>{
  "0": 'files/${pickedFile[0]!.name}',
  "1": 'files/${pickedFile[1]!.name}',
  "2": 'files/${pickedFile[2]!.name}'
};
CollectionReference _collectionReferance =
    FirebaseFirestore.instance.collection("vendors").doc("${UserPreferences.getUserID()}").collection("services");
return _collectionReferance
    .doc()
    .set({
      "name": nameEditingController.text,
      "category": dropdownValue,
      "address": addressEditingController.text,
      "district": districtEditingController.text,
      "phoneNumber": phoneNumberEditingController.text,
      "description": descriptionEditingController.text,
      "price": double.parse(priceEditingController.text),
      "images":imageArray
    })
    //.then((value) => dialog())
    .catchError((error) => Fluttertoast.showToast(msg: "something wrong"));
  
  }

  // postDetailsToFirestore() async {


  //   //calling our firestore
  //   //calling our user model
  //   //sending these values



  //   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  //   User? user = _auth.currentUser;

  //   UserModel userModel = UserModel();

  //   //Writing all the values
  //   userModel.name = nameEditingController.text;
  //   userModel.nic = nicEditingController.text;
  //   userModel.email = user!.email;
  //   userModel.address = addressEditingController.text;
  //   userModel.phoneNumber = phoneNumberEditingController.text;

  //   await firebaseFirestore
  //       .collection("users")
  //       .doc(user.uid)
  //       .set(userModel.tomap());

  //   Fluttertoast.showToast(msg: "Account Created Sucessfully.");

  //   Navigator.pushAndRemoveUntil(
  //       (context),
  //       MaterialPageRoute(builder: (context) => LoginScreen()),
  //       (route) => false);
  // }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnSave() {}
  
}
