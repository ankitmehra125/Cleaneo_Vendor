import 'dart:io';
import 'package:cleaneo_vendor/Home/BotNav.dart';
import 'package:cleaneo_vendor/Home/OrderRequests/Components/orderSummary_bottom_modal.dart';
import 'package:cleaneo_vendor/Home/OrderRequests/OrderReqDemoData.dart';
import 'package:cleaneo_vendor/Home/OrderRequests/RejectOrder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/svg.dart';

class OrderReq extends StatefulWidget {
  const OrderReq({Key? key}) : super(key: key);

  @override
  State<OrderReq> createState() => _OrderReqState();
}

class _OrderReqState extends State<OrderReq> {
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
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) => const BotNav(),
                        ),
                      );
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
                    AppLocalizations.of(context)!.orderrequest,
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
                child: ListView.builder(
                  itemCount: OrderReqData
                      .length, // Replace dataList with your list of dynamic data
                  itemBuilder: (context, index) {
                    final Map<String, dynamic> data = OrderReqData[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            children: [
                              Text(
                                data['orderdate'],
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 181, 181, 181),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            width: mQuery.size.width * 0.9,
                            // height: mQuery.size.height * 0.28,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 3,
                                  blurRadius: 8,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                            ),
                            // padding: EdgeInsets.all(mQuery.size.width * 0.02),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                    color: Color(0xffe9f8ff),
                                  ),
                                  width: double.infinity,
                                  height: mQuery.size.height * 0.06,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: mQuery.size.width * 0.03),
                                  child: Row(
                                    children: [
                                     ProfilePicture(
                                       name: "",
                                       fontsize: 10,
                                       radius: 12,
                                       img: "https://images.news18.com/ibnkhabar/uploads/2023/09/IFS-Apala-mishra-age-upsc-rank-education-biography-in-hindi-marksheet-salary-1.jpg",
                                     ),
                                      SizedBox(
                                        width: mQuery.size.width * 0.02,
                                      ),
                                      Text(
                                        data['name'],
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Icon(
                                        Icons.star,
                                        size: mQuery.size.width * 0.047,
                                        color: const Color(0xff29b2fe),
                                      ),
                                      SizedBox(
                                        width: mQuery.size.width * 0.01,
                                      ),
                                      Text(
                                        data["rating"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: mQuery.size.height * 0.01,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.loc,
                                        style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.acceptin,
                                        style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: mQuery.size.width * 0.045,
                                        height: mQuery.size.height * 0.035,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff29b2fe)),
                                        child: Center(
                                          child: Icon(
                                            Icons.home,
                                            color: Colors.white,
                                            size: mQuery.size.width * 0.03,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: mQuery.size.width * 0.02,
                                      ),
                                      Text(
                                        data["location"],
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Text(
                                        data["acceptin"],
                                        style: const TextStyle(
                                            color: Color(0xff29b2fe),
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Divider(
                                    color: Color.fromARGB(255, 212, 212, 212),
                                    thickness: 0.7,
                                  ),
                                ),
                                SizedBox(
                                  height: mQuery.size.height * 0.01,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        // width: mQuery.size.width * 0.38,
                                        // height: mQuery.size.height * 0.1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!
                                                  .pickdatetime,
                                              style: const TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12),
                                            ),
                                            SizedBox(
                                              height:
                                                  mQuery.size.height * 0.006,
                                            ),
                                            Text(
                                              data['pickupdatetime'],
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 45.0,
                                        width: 0.4,
                                        color: const Color.fromARGB(
                                            255, 195, 195, 195),
                                      ),
                                      Container(
                                        // width: mQuery.size.width * 0.38,
                                        // height: mQuery.size.height * 0.1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!
                                                  .deldatetime,
                                              style: const TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12),
                                            ),
                                            SizedBox(
                                              height:
                                                  mQuery.size.height * 0.006,
                                            ),
                                            Text(
                                              data['deldatetime'],
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: mQuery.size.height * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // Call the function to open the bottom-up modal
                                        orderSummary(context);
                                      },
                                      child: Container(
                                        width: mQuery.size.width * 0.9,
                                        height: mQuery.size.height * 0.045,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(10)),
                                            color: Color(0xff29b2fe)),
                                        child: Center(
                                          child: Text(
                                            // AppLocalizations.of(context)!.acceptorder,
                                            "VIEW ORDER",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                    /*GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RejectOrder()),
                                        );
                                      },
                                      child: Container(
                                        width: mQuery.size.width * 0.45,
                                        height: mQuery.size.height * 0.045,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(10)),
                                            color: Color(0xff29b2fe)),
                                        child: Center(
                                          child: Text(
                                            AppLocalizations.of(context)!
                                                .rejectorder,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),*/
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
