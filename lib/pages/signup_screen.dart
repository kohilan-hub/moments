import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:moments/model/user_model.dart';
import 'package:moments/pages/login_screen.dart';
import 'package:moments/pages/user_home_screen.dart';
import 'package:moments/pages/vendor_home_screen.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/math_utils.dart';

class SignupScreen extends StatefulWidget {
  final bool roleState;
  SignupScreen({
    Key? key,
    required this.roleState,
  }) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController phoneNumberController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmPasswordController =
      new TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //Name field start
    final nameField = TextFormField(
      autofocus: false,
      controller: nameController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("Name can't be empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Please Enter valid Name(Min 3 Character)");
        }
        return null;
      },
      onSaved: (value) {
        nameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Name",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          )),
    );
    //Name field end

    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        //reg expression for email validation
        if (!RegExp("^[a-zA-Z0-9+_.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //phoneNumber field
    final phoneNumberField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Phone Number");
        }
        //reg expression for phone number validation
        if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value)) {
          return ("Please Enter a valid Phone Number");
        }
        return null;
      },
      onSaved: (value) {
        phoneNumberController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.phone),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Phone Number",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //Password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,

      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required to login");
        }
        if (!regex.hasMatch(value)) {
          return ("Please Enter valid Password(Min 6 Character)");
        }
      },

      //validator : () {},
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //confirm Password field
    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordController,
      obscureText: true,

      validator: (value) {
        if (confirmPasswordController.text != passwordController.text) {
          return "Password don't match";
        }
        return null;
      },

      //validator : () {},
      onSaved: (value) {
        confirmPasswordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          )),
    );
    //confirm password

    //Signup button
    final SignupButton = Material(
      elevation: 10,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(8),
      
      color: Color(0xFF950320),
      child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: 40,
          onPressed: () {
            signUp(emailController.text, passwordController.text);
          },
          child: Text(
            "Create your account",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                  ),
          )),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFAF0B2C),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(),
                      Positioned(
                        top: -30,
                        left: -290,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                height: getVerticalSize(171.00),
                                width: getHorizontalSize(180.00),
                                margin: getMargin(right: 10),
                                decoration: BoxDecoration(
                                    color: ColorConstant.red900,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(90)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: ColorConstant.black9003f,
                                          spreadRadius: 5,
                                          blurRadius: 14,
                                          offset: Offset(0, 4))
                                    ])
                                    )
                                    ),
                      ),
                      Positioned(
                        top: 520,
                        left: 60,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                height: 280,
                                width: 200,
                                margin: getMargin(right: 5),
                                decoration: BoxDecoration(
                                    color: ColorConstant.red900,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(100)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: ColorConstant.black9003f,
                                          spreadRadius: 5,
                                          blurRadius: 14,
                                          offset: Offset(0, 4))
                                    ]))),
                      ),
                    ],
                  ),
                  Container(
                    child: Stack(
                      children: [
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "M",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: getFontSize(35),
                                      fontFamily: 'KyivType Sans',
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: "oments",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: getFontSize(25),
                                      fontFamily: 'KyivType Sans',
                                      fontWeight: FontWeight.w400))
                            ]),
                            textAlign: TextAlign.center),
                        Positioned(
                          left: 36.5,
                          top: 19,
                          child: SizedBox(
                            height: 27,
                            width: 27,
                            child: SvgPicture.asset(
                              'assets/icons/ring.svg',color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(36.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(3.0, 0),
                                ),
                                BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(-3.0, 0),
                                ),
                                BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(0, 5),
                                ),
                                BoxShadow(
                                    color: Color(0xFFAF0B2C),
                                    spreadRadius: 2,
                                    blurRadius: 4.0,
                                    offset: Offset(0, 7)),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                              child: Column(
                                children: [
                                  
                                  nameField,
                                  SizedBox(
                                    height: 25,
                                  ),
                                  emailField,
                                  SizedBox(
                                    height: 25,
                                  ),
                                  passwordField,
                                  SizedBox(
                                    height: 25,
                                  ),
                                  confirmPasswordField,
                                  SizedBox(height: 30),
                                  SignupButton,
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                                child: Text(
                                  "Alredy have an acocunt? ",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.name = nameController.text;
    userModel.phoneNumber=phoneNumberController.text;
    userModel.roleState=widget.roleState;

    if(widget.roleState){
      await firebaseFirestore
        .collection("vendors")
        .doc(user.uid)
        .set(userModel.toMap());
    }
    else{await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());}
    
    Fluttertoast.showToast(msg: "Account created successfully");

    if(widget.roleState){
    Navigator.pushAndRemoveUntil((context),
        MaterialPageRoute(builder: (context) => VendorHomeScreen()), (route) => false);
    }
    else{
      Navigator.pushAndRemoveUntil((context),
        MaterialPageRoute(builder: (context) => UserHomeScreen()), (route) => false);
    }
  }
}
