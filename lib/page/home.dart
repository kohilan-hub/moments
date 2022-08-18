import 'package:flutter/material.dart';
import 'package:moments/page/onboarding4.dart';
import 'package:moments/page/signup_screen.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

const primaryColor = Color(0xFFAF0B2C);

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Moments',
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => onboarding4()))),
                actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Future.delayed(Duration.zero, () async {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => onboarding4()));
              });
            }
            // do something
            ,
          )
        ],
      ),
      body: Container(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(60, 10, 1, 1),
                child: Row(
                    children: <Widget>[
                      Text("1.Research venue option",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          )),
                    ],
                    ),
              ),
                   Padding(
                     padding: EdgeInsets.fromLTRB(60, 1, 1, 1),
                     child: Row(
                      children: <Widget>[
                        Text("2.Choose your suitable makeup",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            )),
                      ],
                  ),
                   ),
                   Padding(
                     padding: EdgeInsets.fromLTRB(60, 1, 1, 1),
                     child: Row(
                      children: <Widget>[
                        Text("3.Make a best catering services",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            )),
                      ],
                  ),
                   ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(60, 1, 1, 1),
                    child: Row(
                      children: <Widget>[
                        Text("4.Select your suitable photography",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(60, 1, 1, 1),
                    child: Row(
                      children: <Widget>[
                        Text("5.Find you available pandits",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(60, 1, 1, 1),
                    child: Row(
                      children: <Widget>[
                        Text("6.Quickly ordered your tasty wedding cake",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 50,
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                      children: <Widget>[
                         InkWell(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFAF0B2C),
                              style: BorderStyle.solid,
                              width: 0,
                            ),
                            color: Color(0xFFAF0B2C),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                            child: Row(
                              children: [
                                new Image.asset(
                                  'assets/theme.png',
                                  width: 22.0,
                                  height: 20.0,
                                  fit: BoxFit.cover,
                                ),
                                Text('     Vendors',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => onboarding4()),
                      );
                    },
                  ),
                  ],
                  ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                         InkWell(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFAF0B2C),
                              style: BorderStyle.solid,
                              width: 0,
                            ),
                            color: Color(0xFFAF0B2C),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                new Image.asset(
                                  'assets/theme.png',
                                  width: 22.0,
                                  height: 20.0,
                                  fit: BoxFit.cover,
                                ),
                                Text('     Vendors',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                  ),
                  ],
                  ),
                ],
              ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFFAF0B2C),
                                    style: BorderStyle.solid,
                                    width: 0,
                                  ),
                                  color: Color(0xFFAF0B2C),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      new Image.asset(
                                        'assets/theme.png',
                                        width: 22.0,
                                        height: 20.0,
                                        fit: BoxFit.cover,
                                      ),
                                      Text('     Vendors',
                                          style: TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignupScreen()),
                            );
                          },
                        ),
                        ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFAF0B2C),
                                  style: BorderStyle.solid,
                                  width: 0,
                                ),
                                color: Color(0xFFAF0B2C),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    new Image.asset(
                                      'assets/theme.png',
                                      width: 22.0,
                                      height: 20.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Text('     Vendors',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupScreen()),
                          );
                        },
                      ),
                      ],
                      ),        
                ],
              ),

                   Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFFAF0B2C),
                                    style: BorderStyle.solid,
                                    width: 0,
                                  ),
                                  color: Color(0xFFAF0B2C),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      new Image.asset(
                                        'assets/theme.png',
                                        width: 22.0,
                                        height: 20.0,
                                        fit: BoxFit.cover,
                                      ),
                                      Text('     Vendors',
                                          style: TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignupScreen()),
                            );
                          },
                        ),
                        ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFAF0B2C),
                                  style: BorderStyle.solid,
                                  width: 0,
                                ),
                                color: Color(0xFFAF0B2C),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    new Image.asset(
                                      'assets/theme.png',
                                      width: 22.0,
                                      height: 20.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Text('     Vendors',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignupScreen()),
                            );
                        },
                      ),
                    ],
                  ),    
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
