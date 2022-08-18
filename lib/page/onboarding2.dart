import 'package:flutter/material.dart';
import 'package:moments/page/onboarding3.dart';

class onboarding2 extends StatefulWidget {
  onboarding2({Key? key}) : super(key: key);

  @override
  _onboarding2State createState() => _onboarding2State();
}

class _onboarding2State extends State<onboarding2> {
  @override
  Widget build(BuildContext context) {
    //let's start button
    final startButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(60, 20, 60, 20),
          height: 40,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => onboarding3()));
          },
          child: Text(
            "Next",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Color(0xFFAF0B2C), fontFamily: 'Poppins'),
          )),
    );

    //Let's start button end

    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/OnboardingScreen2.png"), fit: BoxFit.cover),
      ),
      child: Container(
          padding: EdgeInsets.fromLTRB(60, 20, 60, 60),
          alignment: AlignmentDirectional(0, 1.0),
          child: startButton),
    );
  }
}
