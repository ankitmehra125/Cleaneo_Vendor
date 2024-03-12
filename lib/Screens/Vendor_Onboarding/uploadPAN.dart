import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/tandc.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/uploadPAN.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';

class UploadPan extends StatefulWidget {
  const UploadPan({Key? key}) : super(key: key);

  @override
  State<UploadPan> createState() => _UploadPanState();
}

class _UploadPanState extends State<UploadPan> {
  TextEditingController storeNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController gstinController = TextEditingController();

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
                    AppLocalizations.of(context)!.uploadpan,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
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
                                  AppLocalizations.of(context)!
                                      .uploadadhaardesc,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: mQuery.size.height * 0.03,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 16),
                            width: double.infinity,
                            height: mQuery.size.height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: const Offset(0,
                                      0), // changes the position of the shadow
                                ),
                              ],
                            ),
                            child: TextField(
                              cursorColor: Colors.grey,
                              controller: storeNameController,
                              decoration: const InputDecoration(
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: "Enter PAN Card Number",
                                hintStyle: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffABAFB1)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: mQuery.size.height * 0.03,
                          ),
                          SvgPicture.asset("assets/adhaarpicker.svg"),
                          SvgPicture.asset("assets/adhaarpicker.svg"),
                          SizedBox(
                            height: mQuery.size.height * 0.06,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Terms();
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
                                  "Next",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: mQuery.size.height * 0.15,
                          )
                        ],
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
