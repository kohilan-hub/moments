import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moments/core/utils/user_preferences.dart';
import 'package:moments/pages/choose_role_screen.dart';
import 'package:moments/pages/user_home_screen.dart';
import 'package:moments/pages/vendor_home_screen.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/math_utils.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    var uid;
  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
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
          fillColor: Color(0xFFF1F5F9),
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
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
          fillColor: Color(0xFFF1F5F9),
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          )),
    );

    //login start button
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(8),
      color: Color(0xFFAF0B2C),
      child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
          height: 40,
          onPressed: () {
            sigIn(emailController.text, passwordController.text);
          },
          child: Text(
            "Log in",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontFamily: 'Poppins'),
          )),
    );

    return SafeArea(
      child: ScreenUtilInit(
        builder: ((context, child) => 
         Scaffold(
          body: Center(
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "M",
                                style: TextStyle(
                                    color: ColorConstant.red901,
                                    fontSize: getFontSize(35),
                                    fontFamily: 'KyivType Sans',
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "oments",
                                style: TextStyle(
                                    color: ColorConstant.red901,
                                    fontSize: getFontSize(25),
                                    fontFamily: 'KyivType Sans',
                                    fontWeight: FontWeight.w400))
                          ]),
                          textAlign: TextAlign.center),
                      Positioned(
                        left: 26.7.w,
                        top: 14.5.h,
                        child: SizedBox(
                          height: 27,
                          width: 27,
                          child: SvgPicture.asset(
                            'assets/icons/ring.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(26.0),
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
                                  color: Colors.grey,
                                  offset: Offset(3.0, 0),
                                ),
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(-3.0, 0),
                                ),
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 0),
                                ),
                                BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 2,
                                    blurRadius: 4.0,
                                    offset: Offset(0, 7)),
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 50, 20, 30),
                              child: Column(
                                children: [
                                  emailField,
                                  SizedBox(
                                    height: 25,
                                  ),
                                  passwordField,
                                  SizedBox(height: 30),
                                  loginButton,
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Forget password?",
                            style: GoogleFonts.poppins(fontSize: 14,color: Colors.black,letterSpacing: 0.5,fontWeight: FontWeight.w500)
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Text(
                            "Or continue with",
                            style: GoogleFonts.roboto(fontSize: 14,color: Color(0xff64748B))
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [SignInButton(
    Buttons.Google,
    onPressed: () {},
    //text: "Google",
  
  ),SizedBox(
                            height: 8,
                          ),
            SignInButton(
    Buttons.Facebook,
    onPressed: () {},
    //text: "Facebook",
   
  ),
            
            ],
          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ChooseRoleScreen()));
                            },
                            child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                            text: "Don't have account? ",
                            style: GoogleFonts.poppins(fontSize: 14,color: Color(0xff828282))),
                            TextSpan(
                            text: "Create now",
                            style: GoogleFonts.poppins(fontSize: 14,color: Color(0xffAF0B2C),fontWeight: FontWeight.w600))
                          ]),
                          ),
                          
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        
      )
    ),
    designSize: const Size(320, 568),
      )
    );
  }

  void sigIn(String email, String password) async {
    var roleState;
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Sucessful"),
                
                
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
      //getting UID from current user
      final User? user = _auth.currentUser;
      uid = user!.uid;


      print(UserPreferences.getEmail());

     

DocumentSnapshot _userDoc = await FirebaseFirestore.instance.collection('users').doc(uid).get();


DocumentSnapshot _vendorDoc =
    await FirebaseFirestore.instance.collection('vendors').doc(uid).get();
    
    // print('kanni/${_vendorDoc.exists}/');
    // print('kanni/${_userDoc.exists}/');
      


      if(_userDoc.exists){
        Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => UserHomeScreen()));
      }
      else if(_vendorDoc.exists){
        Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => VendorHomeScreen()));
      }

      await UserPreferences.setUserID(uid);
    }
  }
}
