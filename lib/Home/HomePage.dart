import 'package:cleaneo_vendor/Home/Earnings/MyEarnings.dart';
import 'package:cleaneo_vendor/Home/OrderRequests/OrderRequests.dart';
import 'package:cleaneo_vendor/Home/OrderRequests/RejectOrder.dart';
import 'package:cleaneo_vendor/Home/OrderStatus/OrderStatus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  var orderNo = 3;
  int selectedContainerIndex = -1;

  TextEditingController searchController = TextEditingController();

  final List<Widget> _pages = [
    const OrderReq(),
    const OrderStatus(),
    const MyEarnings(),
    const RejectOrder(),
    const OrderReq(),
    const RejectOrder(),
  ];
  List<Map<String, dynamic>> gridItems = [
    {
      "image": "assets/images/Home/Order Requests.png",
      "text": "Order Requests",
    },
    {
      "image": "assets/images/Home/Order Status.png",
      "text": "Order Status",
    },
    {
      "image": "assets/images/Home/My Earnings.png",
      "text": "My Earnings",
    },
    {
      "image": "assets/images/Home/Cash Collected.png",
      "text": "Cash Collected",
    },
    {
      "image": "assets/images/Home/Delivery Partner Management.png",
      "text": "Manage Delivery",
    },
    {
      "image": "assets/images/Home/Cash Collected.png",
      "text": "Ledger",
    },
  ];

  List<String> dealImages = [
    "https://img.freepik.com/premium-vector/super-deal-text-effect-editable-3d-text-style-suitable-banner-promotion_16148-1552.jpg",
    "https://cdn.vectorstock.com/i/preview-1x/10/75/amazing-deals-sign-over-colorful-cut-out-foil-vector-48291075.jpg",
    // Add more image filenames as needed
  ];

  bool _enable = false;

  @override
  Widget build(BuildContext context) {
    String orderreq = AppLocalizations.of(context)!.welcomeback;
    var mQuery = MediaQuery.of(context);

    List<Widget> dealTexts = [
      buildDealTextContainer(mQuery),
      buildDealTextContainer(mQuery),
    ];

    return Scaffold(
      body: Container(
        color: const Color(0xfff3fbff),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 32, bottom: 25),
              width: double.infinity,
              height: mQuery.size.height * 0.38,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/Home/splash.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Builder(
                          builder: (BuildContext context) {
                            return IconButton(
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                              icon: const Icon(
                                Icons.menu,
                                size: 35,
                              ),
                              color: Colors.white,
                            );
                          },
                        ),
                        SvgPicture.asset(
                          "assets/images/Home/mainlogo.svg",
                          width: 30,
                          height: 25,
                        ),
                        const Expanded(child: SizedBox()),
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) {
                          //         return MyProfilePage();
                          //       },
                          //     ),
                          //   );
                          // },
                          child: const ProfilePicture(
                            name: "",
                            radius: 18,
                            fontsize: 10,
                            img:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwKKzV4oKveaDEmBr38LXuMWTho1d1-mjOOcjau6XJ1A&s",
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: mQuery.size.height * 0.035,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.welcomeback,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shweta",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: mQuery.size.height * 0.03,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.online,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: mQuery.size.height * 0.019,
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Switch(
                              value: _enable,
                              onChanged: (value) => setState(
                                () => _enable = value,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.005),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    height: mQuery.size.height * 0.055,
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: TextField(
                      cursorColor: Colors.grey,
                      controller: searchController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: AppLocalizations.of(context)!.search,
                        hintStyle: TextStyle(
                          fontSize: mQuery.size.height * 0.02,
                          color: const Color.fromARGB(255, 179, 179, 179),
                          fontWeight: FontWeight.w600,
                        ),
                        suffixIcon: const Icon(Icons.search,
                            color: Color.fromARGB(255, 179, 179, 179)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      var item = gridItems[index];
                      // var pages = _pages[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => _pages[index]),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          padding:
                              EdgeInsets.only(top: mQuery.size.height * 0.046),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.asset(
                                  item["image"],
                                ),
                              ),
                              SizedBox(height: mQuery.size.height * 0.017),
                              Text(
                                item["text"],
                                style: TextStyle(
                                  fontSize: mQuery.size.height * 0.022,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: gridItems.length,
                  ),
                  SizedBox(height: mQuery.size.height * 0.032),
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     children: dealImages.asMap().entries.map((entry) {
                  //       int index = entry.key;
                  //       String imageName = entry.value;
                  //       Widget container = dealTexts[index];
                  //       return Stack(
                  //         children: [
                  //           Container(
                  //             margin: EdgeInsets.only(left: 16),
                  //             width: mQuery.size.width * 1,
                  //             height: mQuery.size.height * 0.2,
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(16),
                  //               image: DecorationImage(
                  //                 image: NetworkImage(imageName),
                  //                 fit: BoxFit.fill,
                  //               ),
                  //             ),
                  //           ),
                  //           Positioned(
                  //             right: mQuery.size.width * 0.1,
                  //             bottom: mQuery.size.height * 0.02,
                  //             child: container,
                  //           ),
                  //         ],
                  //       );
                  //     }).toList(),
                  //   ),
                  // ),
                  SizedBox(height: mQuery.size.height * 0.03),
                ],
              ),
            ),
          ],
        ),
      ),
      // drawer: const MyDrawer(),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 6),
        height: mQuery.size.height * 0.1,
        child: BottomNavigationBar(
          iconSize: 30,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff29befe),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.shoppingBag), label: ""),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell), label: ""),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.solidSave), label: ""),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.wallet), label: ""),
          ],
        ),
      ),
    );
  }

  Widget buildDealTextContainer(MediaQueryData mQuery) {
    return Container(
      width: mQuery.size.width * 0.3,
      height: mQuery.size.height * 0.04,
      decoration: BoxDecoration(
        color: const Color(0xff29befe),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          "Know More",
          style: TextStyle(
              color: Colors.white,
              fontSize: mQuery.size.height * 0.0175,
              fontWeight: FontWeight.w800),
        ),
      ),
    );
  }

  Widget buildCategoryContainer(String title, int index) {
    var mQuery = MediaQuery.of(context);

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedContainerIndex = index;
        });
      },
      child: Container(
        width: mQuery.size.width * 0.35,
        height: mQuery.size.height * 0.04,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color:
                  selectedContainerIndex == index ? Colors.green : Colors.grey),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: mQuery.size.height * 0.015,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}