import 'package:cleaneo_vendor/Screens/Auth/Login.dart';
import 'package:cleaneo_vendor/Screens/Auth/Signup.dart';
import 'package:cleaneo_vendor/Screens/Welcome/Components/PrivacyPolicy.dart';
import 'package:cleaneo_vendor/Screens/Welcome/Components/contentPolicy.dart';
import 'package:cleaneo_vendor/Screens/Welcome/Components/termsService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//AppLocalizations.of(context)!.helloWorld
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: const Color(0xff006aca),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: mQuery.size.height * 0.33,
            ),
            Center(
              child: SvgPicture.asset("assets/images/mainlogo.svg"),
            ),
            SizedBox(
              height: mQuery.size.height * 0.07,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUpPage();
                        }));
                      },
                      child: Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.06,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: Text(
                          AppLocalizations.of(context)!.signup,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mQuery.size.height * 0.023,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
                    ),

                    SizedBox(
                      height: mQuery.size.height * 0.023,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      },
                      child: Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.06,
                        decoration: BoxDecoration(
                            color: const Color(0xff29b3fe),
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: Text(
                          AppLocalizations.of(context)!.login,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mQuery.size.height * 0.023,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
                    ),

                    SizedBox(
                      height: mQuery.size.height * 0.24,
                    ),
                    Center(
                      child: Text(
                        AppLocalizations.of(context)!.tandc,
                        style: TextStyle(
                            fontSize: mQuery.size.height * 0.02,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),

                    SizedBox(
                      height: mQuery.size.height * 0.025,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Terms of services
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return TS();
                            }));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Terms of Service",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.016,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                height: 2,
                                width: mQuery.size.width * 0.25,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),

                        // privacy policy
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PP();
                            }));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Privacy Policy",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.016,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                height: 2,
                                width: mQuery.size.width * 0.23,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),

                        // content policies
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CP();
                            }));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Content Policies",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.016,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                height: 2,
                                width: mQuery.size.width * 0.25,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    // Divider Row
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
