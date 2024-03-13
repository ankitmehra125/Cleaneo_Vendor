import 'package:cleaneo_vendor/Home/OrderStatus/OrderStatus.dart';
import 'package:cleaneo_vendor/Screens/Welcome/Components/termsService.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

void orderSummary(BuildContext context) {
  var shirtsNo1 = 01;
  var blouseNo = 03;
  var lehengaNo = 01;
  var evDressNo = 01;
  var nightSuiteNo = 02;
  var waistSuitNo = 02;
  var shortNo = 02;
  var skirtNo = 02;
  var sCNo = 01;
  var inWearNo = 06;
  var socksNo = 01;
  var frockNo = 02;
  var jumpSuitNo = 02;

  var kurtaDesignerNo = 02;
  var bedSheetNo = 01;
  var batheMateNo = 01;

  var shirtPrice1 = 10.0;
  var blousePrice = 30.0;
  var lehengaPrice = 180.0;
  var evPrice = 190.0;
  var nightSuitPrice = 45.0;
  var waistCoatPrice = 50.0;
  var shortPrice = 25.0;
  var skirtPrice = 25.0;
  var sCPrice = 30.0;
  var inWearPrice = 15.0;
  var socksPrice = 10.0;
  var frockPrice = 35.0;
  var jumpSuitePrice = 50.0;
  var kurtaDesignerPrice = 30.0;
  var bedSheetPrice = 50.0;
  var bathMatePrice = 30.0;

  double totalShirtPrice1 = shirtsNo1 * shirtPrice1;
  double totalBlousePrice = blouseNo * blousePrice;
  double totalLehengaPrice = lehengaNo * lehengaPrice;
  double totalEvPrice = evDressNo * evPrice;
  double totalNighSuitPrice = nightSuiteNo * nightSuitPrice;
  double totalWaistCoastPrice = waistSuitNo * waistCoatPrice;
  double totalShortPrice = shortNo * shortPrice;
  double totalSkirtPrice = skirtNo * skirtPrice;
  double totalScPrice = sCNo * sCPrice;
  double totalinWearPrice = inWearNo * inWearPrice;
  double totalSocksPrice = socksNo * socksPrice;
  double totalfrockPrice = frockNo * frockPrice;
  double totalJumpSuitPrice = jumpSuitNo * jumpSuitePrice;

  double totalKurtaDesignerPrice = kurtaDesignerNo * kurtaDesignerPrice;
  double totalBedSheetPrice = bedSheetNo * bedSheetPrice;
  double totalBathMatePrice = batheMateNo * bathMatePrice;

  Map<String, double> prices = {
    "Item Total": 1640,
    "Delivery Charges": 50,
    "Tax": 60,
  };

  double calculateTotal(Map<String, double> prices) {
    double total = 0;
    prices.forEach((key, value) {
      total += value;
    });
    return total;
  }

  var userName = "Shweta";
  var distance = 1.2;

  var mQuery = MediaQuery.of(context);
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      String totalSum = '₹ ${calculateTotal(prices).toStringAsFixed(2)}';
      return Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              )),
          width: double.infinity,
          height: mQuery.size.height * 0.8,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24.0, top: 18.0),
                  child: Row(
                    children: [
                      Text(
                        "Pickup Order Summary",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mQuery.size.height * 0.01,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: const Color(0xffebf7ed),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      )),
                  width: double.infinity,
                  height: mQuery.size.height * 0.12,
                  padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width * 0.04),
                  child: Row(
                    children: [
                      ProfilePicture(
                        radius: mQuery.size.width * 0.07,
                        fontsize: 10,
                        name: "",
                        img:
                            "https://images.news18.com/ibnkhabar/uploads/2023/09/IFS-Apala-mishra-age-upsc-rank-education-biography-in-hindi-marksheet-salary-1.jpg",
                      ),
                      SizedBox(
                        width: mQuery.size.width * 0.025,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: mQuery.size.height * 0.016,
                          ),
                          Row(
                            children: [
                              Text(
                                "$userName",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.022,
                                    fontFamily: 'SatoshiBold'),
                              ),
                              SizedBox(
                                width: mQuery.size.width * 0.36,
                              ),
                              Row(children: [
                                Container(
                                  width: mQuery.size.width * 0.05,
                                  height: mQuery.size.height * 0.04,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff29b2fe)),
                                  child: Center(
                                    child: Icon(
                                      Icons.home,
                                      color: Colors.white,
                                      size: mQuery.size.width * 0.033,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: mQuery.size.width * 0.02,
                                ),
                                Text(
                                  "$distance km",
                                  style: TextStyle(
                                      fontSize: mQuery.size.height * 0.018,
                                      fontFamily: 'SatoshiBold'),
                                ),
                              ])
                            ],
                          ),
                          const Text(
                            "B-702, Sarthak the Sarjak, Bhaijipura Chokdi, PDPU \n"
                            "Crossroad , Beside Pulse Mall, Seventhn Floor , Kudasan",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.03,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  color: const Color(0xfff8f8f8),
                  child: Row(
                    children: [
                      const Expanded(child: SizedBox()),

                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       "Vivek",
                      //       style:
                      //           TextStyle(fontSize: mQuery.size.height * 0.016),
                      //     ),
                      //     Text(
                      //       "+91 9978997899",
                      //       style:
                      //           TextStyle(fontSize: mQuery.size.height * 0.013),
                      //     )
                      //   ],
                      // ),
                      SizedBox(
                        width: mQuery.size.width * 0.06,
                      ),
                      // Container(
                      //   width: mQuery.size.width * 0.07,
                      //   height: mQuery.size.height * 0.06,
                      //   decoration: const BoxDecoration(
                      //       shape: BoxShape.circle, color: Color(0xff29b2fe)),
                      //   child: Center(
                      //     child: Icon(
                      //       Icons.phone,
                      //       color: Colors.white,
                      //       size: mQuery.size.width * 0.04,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      width: double.infinity,
                      height: mQuery.size.height * 0.7,
                      padding: EdgeInsets.symmetric(
                          horizontal: mQuery.size.width * 0.033),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            spreadRadius: 0,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: mQuery.size.height * 0.02),
                            Text(
                              "WASH",
                              style: TextStyle(
                                color: const Color(0xff29b2fe),
                                fontWeight: FontWeight.w500,
                                fontSize: mQuery.size.height * 0.018,
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            Row(
                              children: [
                                Text(
                                  "$shirtsNo1 Shirts",
                                  style: TextStyle(
                                    fontSize: mQuery.size.height * 0.017,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                                SizedBox(
                                  width: mQuery.size.width * 0.25,
                                ),
                                const Spacer(),
                              ],
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${shirtPrice1.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalShirtPrice1.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            Row(
                              children: [
                                Text(
                                  "$blouseNo Blouse Designer",
                                  style: TextStyle(
                                    fontSize: mQuery.size.height * 0.017,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                                SizedBox(
                                  width: mQuery.size.width * 0.25,
                                ),
                                const Spacer(),
                              ],
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${blousePrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalBlousePrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$lehengaNo Lehenga Suit(Heavy)",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.38),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${lehengaPrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalLehengaPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$evDressNo Evening Dress(Heavy Work)",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.2),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${evPrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalEvPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$nightSuiteNo Night Suit",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.54),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${nightSuitPrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalNighSuitPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$waistSuitNo Waistcoat",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.54),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${waistCoatPrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalWaistCoastPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$shortNo Short",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(
                                    width: mQuery.size.width * 0.42,
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.05),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${shortPrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalShortPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$skirtNo Skirt",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.61),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${skirtPrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalSkirtPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$sCNo Swimming Costume",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.37),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${sCPrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalScPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$inWearNo Inner wear",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.52),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${inWearPrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalinWearPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$socksNo Socks/Stocking",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.43),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${socksPrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalSocksPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$frockNo Frock",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.58),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${frockPrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalfrockPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.016),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$jumpSuitNo Jump Suits",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.47),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${jumpSuitePrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalJumpSuitPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                            SizedBox(
                              height: mQuery.size.height * 0.006,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Add-On(Cloth Softener)",
                                  style: TextStyle(
                                    color: Color(0xff009c1a),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Text(
                                  "₹ 240",
                                  style: TextStyle(color: Color(0xff29b2fe)),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Text("₹ 10 PER PIECE"),
                                Expanded(child: SizedBox()),
                              ],
                            ),
                            SizedBox(
                              height: mQuery.size.height * 0.01,
                            ),
                            const Divider(),
                            Text(
                              "WASH & STREAM IRON",
                              style: TextStyle(
                                  color: const Color(0xff29b2fe),
                                  fontSize: mQuery.size.height * 0.016),
                            ),
                            SizedBox(height: mQuery.size.height * 0.01),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$kurtaDesignerNo Kurta Designer",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.48),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${kurtaDesignerPrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalKurtaDesignerPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.018),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$bedSheetNo Bed-Sheet Single",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.43),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${bedSheetPrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalBedSheetPrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                            Text(
                              "DRY CLEAN",
                              style: TextStyle(
                                  color: const Color(0xff29b2fe),
                                  fontSize: mQuery.size.height * 0.016),
                            ),
                            SizedBox(height: mQuery.size.height * 0.01),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "$batheMateNo Bath Mate",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.54),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.003),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: mQuery.size.width * 0.02),
                              child: Row(
                                children: [
                                  Text(
                                    "₹ ${bathMatePrice.toStringAsFixed(0)} PER PIECE",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiMedium',
                                    ),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Text(
                                    "₹ ${totalBathMatePrice.toStringAsFixed(0)}",
                                    style: TextStyle(
                                      fontSize: mQuery.size.height * 0.017,
                                      fontFamily: 'SatoshiBold',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Item Total",
                                style: TextStyle(
                                  fontSize: mQuery.size.height * 0.017,
                                  color: Colors.black54,
                                ),
                              ),
                              const Expanded(child: SizedBox()),
                              Text(
                                "₹ ${prices["Item Total"]?.toStringAsFixed(2)}",
                                style: TextStyle(
                                  fontSize: mQuery.size.height * 0.017,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: mQuery.size.height * 0.01,
                          ),
                          const DottedLine(
                            direction: Axis.horizontal,
                            alignment: WrapAlignment.center,
                            lineLength: double.infinity,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black54,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                            dashGapRadius: 0.0,
                          ),
                          SizedBox(
                            height: mQuery.size.height * 0.01,
                          ),
                          Row(
                            children: [
                              Text(
                                "Delivery Charges",
                                style: TextStyle(
                                  fontSize: mQuery.size.height * 0.017,
                                  color: Colors.black54,
                                ),
                              ),
                              const Expanded(child: SizedBox()),
                              Text(
                                "₹ ${prices["Delivery Charges"]?.toStringAsFixed(2)}",
                                style: TextStyle(
                                  fontSize: mQuery.size.height * 0.017,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: mQuery.size.height * 0.01,
                          ),
                          const DottedLine(
                            direction: Axis.horizontal,
                            alignment: WrapAlignment.center,
                            lineLength: double.infinity,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black54,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                            dashGapRadius: 0.0,
                          ),
                          SizedBox(
                            height: mQuery.size.height * 0.01,
                          ),
                          Row(
                            children: [
                              Text(
                                "Tax",
                                style: TextStyle(
                                  fontSize: mQuery.size.height * 0.017,
                                  color: Colors.black54,
                                ),
                              ),
                              const Expanded(
                                child: SizedBox(),
                              ),
                              Text(
                                "₹ ${prices["Tax"]?.toStringAsFixed(2)}",
                                style: TextStyle(
                                  fontSize: mQuery.size.height * 0.017,
                                  color: Colors.black54,
                                ),
                              )
                            ],
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Text(
                                "Grand Total",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.02,
                                    fontFamily: 'SatoshiMedium'),
                              ),
                              const Expanded(child: SizedBox()),
                              Text(
                                totalSum,
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.02,
                                    color: const Color(0xff29b2fe),
                                    fontFamily: 'SatoshiMedium'),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: mQuery.size.height * 0.03,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _showMessage(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.08,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                            color: const Color(0xff29b2fe),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: mQuery.size.height * 0.012),
                                Text(
                                  "TOTAL",
                                  style: TextStyle(
                                      fontSize: mQuery.size.height * 0.02,
                                      color: Colors.white),
                                ),
                                Text(
                                  totalSum,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: mQuery.size.height * 0.02,
                                  ),
                                )
                              ],
                            ),
                            const Expanded(child: SizedBox()),
                            Text(
                              "Proceed",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: mQuery.size.height * 0.024,
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            SizedBox(width: mQuery.size.width * 0.02),
                            const Icon(Icons.arrow_right, color: Colors.white)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mQuery.size.height * 0.02,
                    ),
                  ],
                ),
              ],
            ),
          ));
    },
  );
}

void _showMessage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var mQuery = MediaQuery.of(context);
      return AlertDialog(
        backgroundColor: Colors.white,
        title: const Center(child: Text('Congratulations')),
        content: const Text('The order has been successfully picked'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => OrderStatus()),
              );
            },
            child: Container(
              width: double.infinity,
              height: mQuery.size.height * 0.07,
              decoration: BoxDecoration(
                  color: const Color(0xff29b2fe),
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                child: Text(
                  "Go to Order Status",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: mQuery.size.height * 0.023),
                ),
              ),
            ),
          )
        ],
      );
    },
  );
}
