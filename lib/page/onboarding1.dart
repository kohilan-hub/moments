import 'package:moments/page/onboarding2.dart';
import 'package:flutter/material.dart';

class onboarding1 extends StatefulWidget {
  onboarding1({Key? key}) : super(key: key);

  @override
  _onboarding1State createState() => _onboarding1State();
}

class _onboarding1State extends State<onboarding1> {
  @override
  Widget build(BuildContext context) {
    //let's start button
    final startButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(8),
      color: Color(0xFFAF0B2C),
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(60, 20, 60, 20),
          height: 40,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => onboarding2()));
          },
          child: Text(
            "Next",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontFamily: 'Poppins'),
          )),
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/OnboardingScreen1.png"), fit: BoxFit.cover),
      ),
      child: Container(
          padding: EdgeInsets.fromLTRB(60, 20, 60, 60),
          alignment: AlignmentDirectional(0, 1.0),
          child: startButton),
    );
  }
}
