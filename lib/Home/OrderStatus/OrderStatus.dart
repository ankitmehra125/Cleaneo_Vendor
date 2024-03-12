import 'dart:io';

import 'package:cleaneo_vendor/Home/BotNav.dart';
import 'package:cleaneo_vendor/Home/Drawer.dart';
import 'package:cleaneo_vendor/Home/OrderStatus/Components/DropDown.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/confirmLegal.dart';
import 'package:cleaneo_vendor/Screens/Vendor_Onboarding/uploadAdhaar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  TextEditingController storeNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController gstinController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Map<String, dynamic>> orders = [
    {"status": "Accepted", "time": "11:30 AM", "date": "Today"},
    {"status": "In Process", "time": "11:30 AM", "date": "Today"},
    {"status": "On its way", "time": "11:30 AM", "date": "Yesterday"},
    {"status": "Delivered", "time": "11:30 AM", "date": "23rd Jun, 2023"},
  ];
  bool select = false;
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    return Scaffold(
      key: _scaffoldKey,
      drawer: MyDrawer(),
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
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: mQuery.size.width * 0.045,
                  ),
                  Text(
                    AppLocalizations.of(context)!.orderstatus,
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  select = !select;
                                });
                              },
                              child: Container(
                                width: 20, // Adjust the size as needed
                                height: 20, // Adjust the size as needed
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        Colors.grey, // Adjust the border color
                                  ),
                                ),
                                child: select
                                    ? const Icon(
                                        Icons.check,
                                        size:
                                            16, // Adjust the icon size as needed
                                        color: Colors
                                            .blue, // Adjust the check color
                                      )
                                    : null,
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            const Text(
                              'Select All',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        AnimatedDropdown(),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: orders.length,
                        itemBuilder: (BuildContext context, int index) {
                          // Get the order status
                          String status = orders[index]['status'];
                          String time = orders[index]['time'];
                          String date = orders[index]['date'];
                          // Define color based on status
                          Color color;
                          Color textcolor = Colors.white;
                          switch (status) {
                            case 'Accepted':
                              color = const Color(0xFFE5F0FA);
                              textcolor = const Color(0xFF4B96DB);
                              break;
                            case 'In Process':
                              color = const Color(0xFFFFECED);
                              textcolor = const Color(0xFFFF5357);
                              break;
                            case 'On its way':
                              color = const Color(0xFFE9F7FF);
                              textcolor = const Color(0xFF3BB9FE);
                              break;
                            case 'Delivered':
                              color = const Color(0xFFE5F5E8);
                              textcolor = const Color(0xFF40B452);
                              break;
                            default:
                              color = Colors.grey;
                          }

                          return Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    date,
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 184, 184, 184),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 1.0),
                                height: mQuery.size.height * 0.08,
                                margin: const EdgeInsets.only(bottom: 21.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      offset: const Offset(0,
                                          0), // changes the position of the shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                select = !select;
                                              });
                                            },
                                            child: Container(
                                              width:
                                                  15, // Adjust the size as needed
                                              height:
                                                  15, // Adjust the size as needed
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors
                                                      .grey, // Adjust the border color
                                                ),
                                              ),
                                              child: select
                                                  ? const Icon(
                                                      Icons.check,
                                                      size:
                                                          10, // Adjust the icon size as needed
                                                      color: Colors
                                                          .blue, // Adjust the check color
                                                    )
                                                  : null,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      // SVG icon
                                      SizedBox(
                                        width: 30,
                                        height: 30,
                                        child: SvgPicture.asset(
                                          'assets/bag.svg',
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      // Column with two texts
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Order #${index + 1}',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              time,
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Container with conditional color based on status
                                      Container(
                                        width: 100,
                                        height: 27,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: color,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Text(
                                          status,
                                          style: TextStyle(
                                              color: textcolor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const BotNav();
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
                                  "Save",
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
                          height: 20.0,
                        )
                      ],
                    ),
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
