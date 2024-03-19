import 'package:cleaneo_vendor/Home/BotNav.dart';
import 'package:cleaneo_vendor/Home/CashCollected/CashCollected.dart';
import 'package:cleaneo_vendor/Home/Earnings/MyEarnings.dart';
import 'package:cleaneo_vendor/Home/EditProfile/MyProfile.dart';
import 'package:cleaneo_vendor/Home/Help/Help.dart';
import 'package:cleaneo_vendor/Home/Ledger/Ledger.dart';
import 'package:cleaneo_vendor/Home/Notifications/Notifications.dart';
import 'package:cleaneo_vendor/Home/OrderRequests/OrderRequests.dart';
import 'package:cleaneo_vendor/Home/OrderStatus/OrderStatus.dart';
import 'package:cleaneo_vendor/Home/Training%20Modules/training_modules_page.dart';
import 'package:cleaneo_vendor/Home/YourOrders/YourOrders.dart';
import 'package:cleaneo_vendor/Home/Inventory%20Request/inventory_request_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    var versionNo = 1.1;
    return Drawer(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return MyProfilePage();
                    }));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xfff3fbff),
                height: mQuery.size.height * 0.15,
                child: Column(
                  children: [
                    SizedBox(height: mQuery.size.height * 0.058),
                    GestureDetector(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const ProfilePicture(
                                name: "",
                                radius: 20,
                                fontsize: 10,
                                img:
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwKKzV4oKveaDEmBr38LXuMWTho1d1-mjOOcjau6XJ1A&s",
                              ),
                              SizedBox(
                                width: mQuery.size.width * 0.024,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return MyProfilePage();
                                  }));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: mQuery.size.height * 0.02,
                                        ),
                                        Text(
                                          "Shweta Somaiya",
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.02,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          width: mQuery.size.width * 0.2,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return MyProfilePage();
                                            }));
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                right: 20.0),
                                            child: Image.asset(
                                                "assets/images/drawer-images/edit.png",
                                                color: const Color(0xff29b2fe),
                                                width: mQuery.size.width * 0.04),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.phone_android,
                                          size: mQuery.size.width * 0.04,
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Text(
                                          "(+91) 9978997899",
                                          style: TextStyle(
                                            fontSize: mQuery.size.height * 0.015,
                                          ),
                                        ),
                                        SizedBox(
                                          width: mQuery.size.width * 0.02,
                                        ),
                                        Container(
                                          width: mQuery.size.width * 0.03,
                                          height: mQuery.size.height * 0.03,
                                          decoration: const BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.check,
                                              color: Colors.white,
                                              size: 10,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 10,
                      offset: const Offset(
                          3, 3), // changes the position of the shadow
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const BotNav();
                              }));
                            },
                            child: ListTile(
                              leading: Image.asset(
                                  "assets/images/drawer-images/dashboard.png",
                                  color: const Color(0xff29b2fe),
                                  width: mQuery.size.width * 0.065),
                              title: Text(
                                "Dashboard",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: mQuery.size.height * 0.0212,
                                ),
                              ),
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const OrderReq();
                            }));
                          },
                          child: ListTile(
                            leading: Image.asset(
                                "assets/images/drawer-images/shopping-bag.png",
                                color: const Color(0xff29b2fe),
                                width: mQuery.size.width * 0.06),
                            title: Text(
                              "Order Requests",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: mQuery.size.height * 0.0212,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return OrderStatus();
                            }));
                          },
                          child: ListTile(
                            leading: Image.asset(
                                "assets/images/drawer-images/location_icon.png",
                                color: const Color(0xff29b2fe),
                                width: mQuery.size.width * 0.06),
                            title: Text(
                              "Order Status",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: mQuery.size.height * 0.0212,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const YourOrders();
                            }));
                          },
                          child: ListTile(
                            leading: Image.asset(
                                "assets/images/drawer-images/shopping-bag.png",
                                color: const Color(0xff29b2fe),
                                width: mQuery.size.width * 0.06),
                            title: Text(
                              "Your Orders",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: mQuery.size.height * 0.0212,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Notifications();
                            }));
                          },
                          child: ListTile(
                            leading: Image.asset(
                                "assets/images/drawer-images/location_icon.png",
                                color: const Color(0xff29b2fe),
                                width: mQuery.size.width * 0.06),
                            title: Text(
                              "Notifications",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: mQuery.size.height * 0.0212,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MyEarnings();
                            }));
                          },
                          child: ListTile(
                            leading: Image.asset(
                                "assets/images/drawer-images/credit-card.png",
                                color: const Color(0xff29b2fe),
                                width: mQuery.size.width * 0.06),
                            title: Text(
                              "My Earnings",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: mQuery.size.height * 0.0212,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CashCollected();
                            }));
                          },
                          child: ListTile(
                            leading: Image.asset(
                                "assets/images/drawer-images/offers.png",
                                color: const Color(0xff29b2fe),
                                width: mQuery.size.width * 0.06),
                            title: Text(
                              "Cash Collected",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: mQuery.size.height * 0.0212,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Ledger();
                            }));
                          },
                          child: ListTile(
                            leading: Image.asset(
                                "assets/images/drawer-images/gift.png",
                                color: const Color(0xff29b2fe),
                                width: mQuery.size.width * 0.06),
                            title: Text(
                              "Ledger",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: mQuery.size.height * 0.0212,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return InventoryRequestPage();
                                }));
                          },
                          child: ListTile(
                            leading: Image.asset(
                                "assets/images/drawer-images/help.png",
                                color: const Color(0xff29b2fe),
                                width: mQuery.size.width * 0.06),
                            title: Text(
                              "Inventory Request",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: mQuery.size.height * 0.0212,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Trainings();
                            }));
                          },
                          child: ListTile(
                            leading: Image.asset(
                                "assets/images/drawer-images/help.png",
                                color: const Color(0xff29b2fe),
                                width: mQuery.size.width * 0.06),
                            title: Text(
                              "Training Modules",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: mQuery.size.height * 0.0212,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CustomerServicePage();
                            }));
                          },
                          child: ListTile(
                            leading: Image.asset(
                                "assets/images/drawer-images/help.png",
                                color: const Color(0xff29b2fe),
                                width: mQuery.size.width * 0.06),
                            title: Text(
                              "Help",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: mQuery.size.height * 0.0212,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: mQuery.size.height * 0.02),
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width * 0.045),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff29B2FE),
                          borderRadius: BorderRadius.circular(8)),
                      width: double.infinity,
                      height: mQuery.size.height * 0.04,
                      child: Center(
                        child: Text(
                          "Join us as a partner",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: mQuery.size.height * 0.02,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width * 0.045),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "Sign Out",
                                    style: TextStyle(
                                        fontSize: mQuery.size.height * 0.022,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.0075,
                        ),
                        Text(
                          "CLEANEO V$versionNo",
                          style: TextStyle(
                            fontSize: mQuery.size.height * 0.016,
                          ),
                        ),
                        SizedBox(
                          height: mQuery.size.height * 0.01,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
