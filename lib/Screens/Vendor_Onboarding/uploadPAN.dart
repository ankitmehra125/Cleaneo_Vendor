
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/tandc.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/uploadPAN.dart';
import 'package:cleaneo_vendor/Screens/Welcome/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadPan extends StatefulWidget {
  const UploadPan({Key? key}) : super(key: key);

  @override
  State<UploadPan> createState() => _UploadPanState();
}

class _UploadPanState extends State<UploadPan> {
  TextEditingController panController = TextEditingController();
  XFile? _image;

  final ImagePicker _imagePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006acb),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height*0.058,
                bottom: mQuery.size.height*0.03,
                left: mQuery.size.width*0.045,
                right: mQuery.size.width*0.045,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
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
                        fontSize: 20, color: Colors.white, fontFamily: 'SatoshiBold'),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: mQuery.size.height*0.028,
                    left: mQuery.size.width*0.045,
                    right: mQuery.size.width*0.045,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: mQuery.size.height * 0.032,
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
                              spreadRadius: 0,
                              blurRadius: 7,
                              offset: const Offset(0,
                                  0), // changes the position of the shadow
                            ),
                          ],
                        ),
                        child: TextField(
                          cursorColor: Colors.grey,
                          controller: panController,
                          decoration: const InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "Enter PAN Card Number",
                            contentPadding: EdgeInsets.symmetric(vertical: 16),
                            hintStyle: TextStyle(
                                fontSize: 13,
                                fontFamily: 'SatoshiMedium',
                                color: Color(0xffABAFB1)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mQuery.size.height * 0.055,
                      ),
                      GestureDetector(
                        onTap: () async {
                          final imageSource = await showModalBottomSheet<ImageSource>(
                            backgroundColor: Colors.white,
                            context: context,
                            builder: (BuildContext context) {
                              return SafeArea(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(
                                      leading: Icon(Icons.camera_alt),
                                      title: Text(
                                        'Camera',
                                        style: TextStyle(
                                          fontFamily: 'SatoshiMedium',
                                        ),
                                      ),
                                      onTap: () =>
                                          Navigator.of(context).pop(ImageSource.camera),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.photo_library),
                                      title: Text(
                                        'Gallery',
                                        style: TextStyle(
                                          fontFamily: 'SatoshiMedium',
                                        ),
                                      ),
                                      onTap: () =>
                                          Navigator.of(context).pop(ImageSource.gallery),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );

                          if (imageSource != null) {
                            final XFile? pickedImage =
                            await _imagePicker.pickImage(source: imageSource);

                            setState(() {
                              _image = pickedImage;
                            });
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: _image != null
                                ? DecorationImage(
                              image: FileImage(File(_image!.path)),
                              fit: BoxFit.cover,
                            )
                                : null, // Null if _image is null
                          ),
                          child: _image== null
                              ? SvgPicture.asset(
                            "assets/adhaarpicker.svg",
                            height: mQuery.size.height * 0.2,
                          )
                              : null, // No child if _image is not null
                        ),
                      ),


                      Expanded(child: SizedBox()),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
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
                                        fontFamily: 'SatoshiBold'),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
