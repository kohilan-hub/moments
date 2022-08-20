import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moments/core/app_export.dart';
import 'package:moments/pages/signup_screen.dart';

import 'vendor_home_screen.dart';

class ChooseRoleScreen extends StatefulWidget {
  @override
  State<ChooseRoleScreen> createState() => _ChooseRoleScreenState();
}

class _ChooseRoleScreenState extends State<ChooseRoleScreen> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed:(){ Navigator.pop(context);},
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
              centerTitle: true,

              //actions: <Widget>[],
            ),
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
               
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Padding(
                  padding: getPadding(left: 83, top: 17, right: 83),
                  child: Text("Choose Your Role",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtVollkornRomanRegular20Red901
                          .copyWith())),
                          Expanded(
                            child: Column
                            (mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                      style: ElevatedButton.styleFrom(maximumSize: Size.fromWidth(MediaQuery.of(context).size.width / 2.5),
                        primary: Color(0xffAF0B2C),
                        elevation: 0,
                        padding: EdgeInsets.fromLTRB(19, 13, 19, 13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (_) => SignupScreen(roleState: true))),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        
                        
                        children: [
                          
                          Text('Vendor',
                              style: AppStyle.txtMulishSemiBold16WhiteA700
                                  .copyWith()),
                                  SizedBox(width: 5),
                                  Icon(
                            Icons.engineering_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                              ElevatedButton(
                      style: ElevatedButton.styleFrom(maximumSize: Size.fromWidth(MediaQuery.of(context).size.width / 2.5),
                        primary: Color(0xffAF0B2C),
                        elevation: 0,
                        padding: EdgeInsets.fromLTRB(19, 13, 19, 13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (_) => SignupScreen(roleState: false))),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        
                        
                        children: [
                          
                          Text('User',
                              style: AppStyle.txtMulishSemiBold16WhiteA700
                                  .copyWith()),
                                  SizedBox(width: 5),
                                  Icon(
                            Icons.person_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                          
                              
                          ],
                          ),
                          ),
                  
                ]))));
  }

  onTapRowvendors() {}

  onTapRowusers() {}
}
