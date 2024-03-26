import 'dart:io';

import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/Verifying.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/takeSelfie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class ConfirmLegal extends StatefulWidget {
  const ConfirmLegal({Key? key}) : super(key: key);

  @override
  State<ConfirmLegal> createState() => _ConfirmLegalState();
}

class _ConfirmLegalState extends State<ConfirmLegal> {
  TextEditingController storeNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController gstinController = TextEditingController();

  // T&C
  bool tandc0 = false;
  bool tandc1 = false;
  bool tandc2 = false;

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
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
              padding: const EdgeInsets.only(
                  top: 45, left: 16, right: 16, bottom: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
                    AppLocalizations.of(context)!.legal,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 1,
                      offset: const Offset(
                          3, 3), // changes the position of the shadow
                    ),
                  ],
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: mQuery.size.height * 0.032,
                        ),
                        Row(
                          children: [
                            Container(
                              width: mQuery.size.width * 0.9,
                              child: Text(
                                AppLocalizations.of(context)!.legaldesc,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              'I agree to all the above terms of services',
                              style: TextStyle(fontSize: 14),
                            ),
                            Transform.scale(
                              scale: 0.7,
                              child: CupertinoSwitch(
                                value: tandc0,
                                onChanged: (bool value) {
                                  setState(() {
                                    tandc0 = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: mQuery.size.width * 0.7,
                              child: const Text(
                                'I consent to electronic signatures and by checking this i agree to all the above terms of services.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Transform.scale(
                              scale: 0.7,
                              child: CupertinoSwitch(
                                value: tandc1,
                                onChanged: (bool value) {
                                  setState(() {
                                    tandc1 = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              width: mQuery.size.width * 0.7,
                              child: const Text(
                                'I agree to receive promotional messages based on my location from Cleaneo via email and SMS until I unsubscribed.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Transform.scale(
                              scale: 0.7,
                              child: CupertinoSwitch(
                                value: tandc2,
                                onChanged: (bool value) {
                                  setState(() {
                                    tandc2 = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Verifying();
                              }));
                            },
                            child: Container(
                              width: double.infinity,
                              height: mQuery.size.height * 0.06,
                              decoration: BoxDecoration(
                                  color: const Color(0xff29b2fe),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Center(
                                child: const Text(
                                  "Finish",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.04,
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
