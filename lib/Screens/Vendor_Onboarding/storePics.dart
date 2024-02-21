import 'dart:io';

import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/RegistrationStarting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class StorePics extends StatefulWidget {
  const StorePics({Key? key}) : super(key: key);

  @override
  State<StorePics> createState() => _StorePicsState();
}

class _StorePicsState extends State<StorePics> {
  TextEditingController storeNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController gstinController = TextEditingController();

  List<String> selectedServices = [];
  List<File> _images = [];

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _images.add(File(pickedImage.path));
      });
    }
  }

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
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.045,
                  ),
                  Text(
                    AppLocalizations.of(context)!.addstore,
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
                            Text(
                              AppLocalizations.of(context)!.uploadstorepics,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset("assets/imagepicker.svg"),
                            SvgPicture.asset("assets/imagepicker.svg"),
                            SvgPicture.asset("assets/imagepicker.svg"),
                            SvgPicture.asset("assets/imagepicker.svg"),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.032,
                        ),
                        Row(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.uploadstoredocs,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset("assets/imagepicker.svg"),
                            SvgPicture.asset("assets/imagepicker.svg"),
                            SvgPicture.asset("assets/imagepicker.svg"),
                            SvgPicture.asset("assets/imagepicker.svg"),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.06,
                          decoration: BoxDecoration(
                              color: const Color(0xff29b2fe),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return RegStart();
                                }));
                              },
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

  Widget buildServiceContainer(String imagePath, String serviceName) {
    var mQuery = MediaQuery.of(context);
    bool isSelected = selectedServices.contains(serviceName);

    return Stack(
      children: [
        Container(
          height: mQuery.size.height * 0.11,
          width: mQuery.size.width * 0.27,
          decoration: BoxDecoration(
            color: selectedServices.contains(serviceName)
                ? const Color(0xfff3fbff) // Change the color if selected
                : Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset:
                    const Offset(0, 0), // changes the position of the shadow
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: mQuery.size.height * 0.038,
              ),
              Container(
                height: mQuery.size.height * 0.04,
                width: mQuery.size.width * 0.09,
                child: Image.asset(
                  imagePath,
                  width: 32,
                ),
              ),
              Text(
                serviceName,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 11.8,
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: mQuery.size.width * 0.025,
          top: mQuery.size.height * 0.006,
          child: Container(
            height: mQuery.size.height * 0.03,
            width: mQuery.size.width * 0.05,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? Colors.blue : Colors.transparent,
              border: Border.all(
                color: isSelected ? Colors.transparent : Colors.grey,
              ),
            ),
            child: isSelected
                ? const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 20,
                  )
                : null,
          ),
        ),
      ],
    );
  }

  void toggleServiceSelection(String serviceName) {
    setState(() {
      if (selectedServices.contains(serviceName)) {
        selectedServices.remove(serviceName);
      } else {
        selectedServices.add(serviceName);
      }
    });
  }
}
