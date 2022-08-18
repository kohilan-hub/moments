import 'package:flutter/material.dart';
import 'package:moments/page/login_screen.dart';
import 'package:moments/page/signup_screen.dart';

class onboarding4 extends StatefulWidget {
  onboarding4({Key? key}) : super(key: key);

  @override
  _onboarding4State createState() => _onboarding4State();
}

class _onboarding4State extends State<onboarding4> {
  @override
  Widget build(BuildContext context) {
    //let's start button
    final startButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(25),
      color: Color(0xFFAF0B2C),
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
          height: 40,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => SignupScreen()));
          },
          child: Text(
            "Register With Us",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'Poppins'),
          )),
    );
    //Let's start button end

  return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Register.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,70,20,20),
          child: Column(
            children: [
              Row(
                children: [Text("Lets do our fantasy...", 
                  style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),],
              ),
              SizedBox(height: 5,),
              Row(
                  children: [Text("Moments  Offering wedding planning, styling ",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  )],
              ),
              Row(
                  children: [Text("and catering all under one roof.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  )],
              ),

              Container(
                margin: EdgeInsets.fromLTRB(40,30,30,10),
                width: 500,
                height: 500,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      startButton
                    ],
                  ),
                ),
              ), 
               
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text("Already have an account?", 
                              style: TextStyle(
                                      fontSize: 18, color: Colors.black),),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LoginScreen()));
                                },
                                child: Text(
                                  " Log in",
                                  style: TextStyle(
                                      fontSize: 18, color: Color(0xFFAF0B2C)),
                              ),
                      )
                  ],
              ),  
            ],
          ),
        ) ,/* add child content here */
      ),
    );
  }
}
