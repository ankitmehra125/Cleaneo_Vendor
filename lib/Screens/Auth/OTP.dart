import 'package:cleaneo_vendor/Constant/signupVariables.dart';
import 'package:cleaneo_vendor/Home/BotNav.dart';
import 'package:cleaneo_vendor/Home/Home_/Home.dart';
import 'package:cleaneo_vendor/Screens/Auth/Login.dart';
import 'package:cleaneo_vendor/Screens/Auth/Signup.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/addStore.dart';
import 'package:cleaneo_vendor/Screens/Welcome/Components/termsService.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';


class OTPPage extends StatefulWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;
  int focusedIndex = -1;
  var phoneNo = "+91 9793878788";
  String checkOTP = "";
  bool showError = false;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(4, (_) => TextEditingController());
    focusNodes = List.generate(4, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    final defaultPinTheme = PinTheme(
        width: mQuery.size.width * 0.23,
        height: mQuery.size.height * 0.1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.45),
              spreadRadius: 0,
              blurRadius: 7,
              offset: const Offset(0, 0), // changes the position of the shadow
            ),
          ],
        ),
        textStyle: TextStyle(
            fontSize: mQuery.size.height * 0.04,
            fontFamily: 'SatoshiBold'));
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff006acb),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height * 0.058,
                bottom: mQuery.size.height * 0.03,
                left: mQuery.size.width * 0.045,
                right: mQuery.size.width * 0.045,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Otp == "Login" ? LoginPage() : SignUpPage();
                      }));
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.045,
                  ),
                  Text(
                    "Verify Phone Number",
                    style: TextStyle(
                        fontSize: mQuery.size.height * 0.027,
                        color: Colors.white,
                        fontFamily: 'SatoshiBold'),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter 4 Digit Code $OTP",
                        style: TextStyle(
                            fontSize: mQuery.size.height * 0.0215,
                            fontFamily: 'SatoshiBold'),
                      ),
                      SizedBox(height: mQuery.size.height * 0.006),
                      Text(
                        "Sent to $phone",
                        style: TextStyle(
                            fontSize: mQuery.size.height * 0.018,
                            fontFamily: 'SatoshiRegular',
                            color: Colors.black87),
                      ),
                      SizedBox(height: mQuery.size.height * 0.04),
                      Pinput(
                        length: 4,
                        onChanged: (value) {
                          setState(() {
                            checkOTP = value;
                            showError = false;
                          });

                        },
                        onSubmitted: (value) {
                          setState(() {
                            checkOTP = value;
                            showError = false;
                          });
                        },
                        defaultPinTheme: defaultPinTheme,
                      ),
                      SizedBox(height: mQuery.size.height*0.01,),
                      showError && checkOTP.isEmpty
                          ? Text(
                        "Please Enter OTP",
                        style: TextStyle(
                          fontFamily: 'SatoshiMedium',
                          color: Colors.red,
                        ),
                      )
                          : showError && checkOTP.isNotEmpty && checkOTP != OTP
                          ? Text(
                        "Incorrect OTP. Please Enter Correct OTP",
                        style: TextStyle(
                          fontFamily: 'SatoshiMedium',
                          color: Colors.red,
                        ),
                      )
                          : Text(""),

                      SizedBox(height: mQuery.size.height * 0.09),
                      Text(
                        "Problems receiving the code?",
                        style: TextStyle(
                            fontSize: mQuery.size.height * 0.018,
                            fontFamily: 'SatoshiBold'),
                      ),
                      SizedBox(height: mQuery.size.height * 0.008),
                      Row(
                        children: [
                          const Icon(
                            Icons.refresh,
                            color: Color(0xff29b2fe),
                          ),
                          SizedBox(width: mQuery.size.width * 0.015),
                          Text(
                            "RESEND",
                            style: TextStyle(
                                color: const Color(0xff29b2fe),
                                fontSize: mQuery.size.height * 0.018,
                                fontFamily: 'SatoshiBold'),
                          )
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: () {
                          if (checkOTP.isEmpty) {
                            setState(() {
                              showError = true;
                            });
                          } else {
                            if (checkOTP == OTP) {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return logedIn == "Login" ? BotNav() : StoreDetailsPage();
                              }));
                            } else {
                              setState(() {
                                showError = true;
                              });
                            }
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                            color: const Color(0xff29b2fe),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                            child: Text(
                              "Verify",
                              style: TextStyle(
                                fontSize: mQuery.size.height * 0.02,
                                color: Colors.white,
                                fontFamily: 'SatoshiBold',
                              ),
                            ),
                          ),
                        ),
                      ),
                      
                      SizedBox(height: mQuery.size.height*0.023,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OTPBox extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isFocused;

  OTPBox(
      {required this.controller,
      required this.focusNode,
      required this.isFocused});

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Container(
      width: mQuery.size.width * 0.18,
      height: mQuery.size.width * 0.63,
      child: TextField(
        style: const TextStyle(fontSize: 30),
        controller: controller,
        focusNode: focusNode,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
