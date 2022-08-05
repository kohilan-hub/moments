

import 'package:flutter/material.dart';
import 'package:kohilan_s_application1/core/app_export.dart';
import 'package:kohilan_s_application1/widgets/custom_button.dart';

import 'onboarding_screen_2_screen.dart';

// class OnboardingPageState extends StatefulWidget {
//   @override
// _OnboardingPageState createState() => _OnboardingPageState();
// }

// class _OnboardingPageState extends State<OnboardingPage>{
//  final controller = PageController();

//  @override
//  void dispose(){
//   controller.dispose();

//   super.dispose();
//  }

//  @override
// Widget build(BuildContext context) => Scaffold(
//   body: Container(
//     padding: const EdgeInsets.only(bottom: 80),
//     child: PageView(
//       controller: controller,
//       children: [
//         Container(
//           color: Colors.red,
//           child: const Center(child: Text('Page 1'),),
//         ),
//         Container(
//           color: Colors.indigo,
//           child: const Center(child: Text('Page 2'),),
//         ),
//         Container(
//           color: Colors.green,
//           child: const Center(child: Text('Page 3'),),
//         )
//       ],
//     ),
//   ),
//   bottomSheet: Container(
//     padding: const EdgeInsets.symmetric(horizontal:12 ),
//     height: 80,
//     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       TextButton(onPressed: () =>controller.jumpToPage(2), child: const Text('SKIP')),
//       Center(
//         child: SmoothPageIndicator(controller: controller,count: 3,),
//       ),
//       TextButton(onPressed: () =>controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn), child: const Text('NEXT')),
//     ],),
//   ),
// );
// }

class OnboardingScreen1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Container(
                          margin: getMargin(left: 94, top: 249, right: 94),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "M",
                                    style: TextStyle(
                                        color: ColorConstant.red901,
                                        fontSize: getFontSize(35),
                                        fontFamily: 'KyivType Sans',
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: "oments",
                                    style: TextStyle(
                                        color: ColorConstant.red901,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'KyivType Sans',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.center)),
                      Padding(
                          padding: getPadding(left: 94, right: 94),
                          child: Image.asset(ImageConstant.imgIcons8ringsid,
                              height: getSize(50.00),
                              width: getSize(50.00),
                              fit: BoxFit.fill)),
                      CustomButton(
                          width: 122,
                          text: "Next",
                          margin: getMargin(
                              left: 94, top: 137, right: 94, bottom: 20),
                          shape: ButtonShape.RoundedBorder8,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.PoppinsRegular13WhiteA700,
                          onTap: () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => OnboardingScreen2Screen())))
                    ]))))));
  }

  // onTapBtnNext() => Navigator.of(context).pushReplacement(
  //     MaterialPageRoute(builder: (_) => OnboardingScreen2Screen()));
}
