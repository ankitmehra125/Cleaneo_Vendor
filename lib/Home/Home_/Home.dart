import 'package:cleaneo_vendor/Home/CashCollected/CashCollected.dart';
import 'package:cleaneo_vendor/Home/Drawer.dart';
import 'package:cleaneo_vendor/Home/Earnings/MyEarnings.dart';
import 'package:cleaneo_vendor/Home/EditProfile/MyProfile.dart';
import 'package:cleaneo_vendor/Home/Ledger/Ledger.dart';
import 'package:cleaneo_vendor/Home/OrderRequests/OrderRequests.dart';
import 'package:cleaneo_vendor/Home/OrderStatus/OrderStatus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var orderNo = 3;
  int selectedContainerIndex = -1;

  TextEditingController searchController = TextEditingController();

  final List<Widget> _pages = [
    const OrderReq(),
    const OrderStatus(),
    const MyEarnings(),
    const CashCollected(),
    const OrderReq(),
    const Ledger(),
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
  bool status = false;
  List<String> dealImages = [
    "https://img.freepik.com/premium-vector/super-deal-text-effect-editable-3d-text-style-suitable-banner-promotion_16148-1552.jpg",
    "https://cdn.vectorstock.com/i/preview-1x/10/75/amazing-deals-sign-over-colorful-cut-out-foil-vector-48291075.jpg",
    // Add more image filenames as needed
  ];

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    return Scaffold(
      drawer: const MyDrawer(),
      body: Container(
        color: const Color(0xfff3fbff),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 26),
              width: double.infinity,
              height: mQuery.size.height * 0.32,
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
                                size: 30,
                              ),
                              color: Colors.white,
                            );
                          },
                        ),
                        SvgPicture.asset(
                          "assets/images/Home/mainlogo.svg",
                          width: 30,
                          height: 23,
                        ),
                        const Expanded(child: SizedBox()),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MyProfilePage();
                                },
                              ),
                            );
                          },
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
                        height: mQuery.size.height * 0.03,
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
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shweta",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: mQuery.size.height * 0.018,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              status ? 'Online' : 'Offline',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17
                              ),
                            ),
                            SizedBox(width: mQuery.size.width*0.012,),
                            Transform.scale(
                              scale: 0.9,
                              child: Switch(
                                value: status,
                                activeTrackColor: Colors.white,
                                onChanged: (newValue) {
                                  setState(() {
                                    status = newValue;
                                  });
                                },
                                thumbColor: MaterialStateProperty.resolveWith<Color?>(
                                      (Set<MaterialState> states) {
                                    // Set thumb color to green when switch is active (on)
                                    if (states.contains(MaterialState.selected)) {
                                      return Colors.green;
                                    }
                                    // Return null to use default color for other states
                                    return null;
                                  },
                                ),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                  // SizedBox(height: mQuery.size.height * 0.02),

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
                              EdgeInsets.only(top: mQuery.size.height * 0.01),
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
                                  fontSize: mQuery.size.height * 0.02,
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
    );
  }
}
