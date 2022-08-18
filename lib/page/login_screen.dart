import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:moments/page/home.dart';
import 'package:moments/page/onboarding1.dart';
import 'package:moments/page/signup_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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

    //Facebook button
    final facebookButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(8),
      color: Color(0xFFF1F5F9),
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          height: 10,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Text(
            "Facebook",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontFamily: 'Poppins'),
          )),
    );

    //Google button
    final googleButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(8),
      color: Color(0xFFF1F5F9),
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Text(
            "Google",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontFamily: 'Poppins'),
          )),
    );

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
                    decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/LoginScreen.png"),
            fit: BoxFit.cover,
          ),
        ),
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 80, 20, 30),
                      child: Column(
                        children: [
                            SizedBox(
                              height: 45,
                            ),
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
                    SizedBox(
                      height: 20,
                    ),
                    Text("Forget password?", 
                          style: TextStyle(
                            fontSize: 17,
                          ),),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Or continue with",
                      style: TextStyle(
                        color: Colors.black12,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        googleButton,
                        SizedBox(
                          width: 45,
                        ),
                        facebookButton,
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have account? ",
                        style: TextStyle(
                              fontSize: 17,
                            ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen()));
                          },
                          child: Text(
                            "Create now",
                            style: TextStyle(
                              color: Color(0xFFAF0B2C),
                              fontSize: 17,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void sigIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Sucessful"),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => home()))
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
