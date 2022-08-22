import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/widgets/custom_button.dart';
import 'package:moments/widgets/custom_icon_button.dart';

class VendorAddingNewServiceScreen extends StatefulWidget {
  @override
  State<VendorAddingNewServiceScreen> createState() => _VendorAddingNewServiceScreenState();
}

class _VendorAddingNewServiceScreenState extends State<VendorAddingNewServiceScreen> {

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
    String dropdownValue;
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
                onPressed: null,
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
                    onPressed: null,
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
                //padding: getPadding(left: 10, top: 10),
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
                           
                  // 
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(color: Colors.amber,
                        child: SizedBox(width: 100, height: 100,
                          child: IconButton(alignment: Alignment.center,
            onPressed:(){ },
            icon: Icon(
            Icons.add_rounded,
            size: 80.0,
            color: Colors.black,
            ),
              ),
                        ),
                      ),
                      Container(color: Colors.amber,
                        child: SizedBox(width: 100, height: 100,
                          child: IconButton(alignment: Alignment.center,
            onPressed:(){ },
            icon: Icon(
            Icons.add_rounded,
            size: 80.0,
            color: Colors.black,
            ),
              ),
                        ),
                      ),
                      Container(color: Colors.amber,
                        child: SizedBox(width: 100, height: 100,
                          child: IconButton(alignment: Alignment.center,
            onPressed:(){ },
            icon: Icon(
            Icons.add_rounded,
            size: 80.0,
            color: Colors.black,
            ),
              ),
                        ),
                      ),
                    ],
                  ),
                  
                  Text(
                      "Use quality pictures for the product. It will be used for products adverts",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle
                          .txtPoppinsRegular16Gray700
                          .copyWith()),
                  CustomButton(
                      width: 263,
                      text: "Save",
                      margin:
                          getMargin(left: 11, top: 17, right: 11),
                      padding: ButtonPadding.PaddingAll14,
                      fontStyle: ButtonFontStyle.PoppinsMedium18,
                      onTap: onTapBtnSave)
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnSave() {}
}
