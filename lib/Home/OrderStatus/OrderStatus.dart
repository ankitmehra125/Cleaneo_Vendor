import 'package:cleaneo_vendor/Home/BotNav.dart';
import 'package:cleaneo_vendor/Home/Drawer.dart';
import 'package:cleaneo_vendor/Home/OrderStatus/Components/DropDown.dart';
import 'package:cleaneo_vendor/Screens/Welcome/Components/termsService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/svg.dart';

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
  var userName = "Shweta";

  bool isChecked = false;

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;

  void _orderStatusBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        var mQuery = MediaQuery.of(context);
        var distance = 1.2;
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              width: double.infinity,
              height: mQuery.size.height * 0.75,
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        SizedBox(height: mQuery.size.height * 0.02),
                        Padding(
                          padding: EdgeInsets.only(left: mQuery.size.width * 0.045),
                          child: Text(
                            "Order Status - ID #12345",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.02),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.12,
                          color: const Color(0xffebf7ed),
                          padding: EdgeInsets.symmetric(
                            horizontal: mQuery.size.width * 0.04,
                          ),
                          child: Row(
                            children: [
                              ProfilePicture(
                                radius: mQuery.size.width * 0.07,
                                fontsize: 10,
                                name: "",
                                img: "https://images.news18.com/ibnkhabar/uploads/2023/09/IFS-Apala-mishra-age-upsc-rank-education-biography-in-hindi-marksheet-salary-1.jpg",
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
                                          fontFamily: 'SatoshiBold',
                                        ),
                                      ),
                                      SizedBox(
                                        width: mQuery.size.width * 0.3,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: mQuery.size.width * 0.05,
                                            height: mQuery.size.height * 0.04,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff29b2fe),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.home,
                                                color: Colors.white,
                                                size: mQuery.size.width * 0.033,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: mQuery.size.width * 0.02),
                                          Text(
                                            "$distance km",
                                            style: TextStyle(
                                              fontSize: mQuery.size.height * 0.018,
                                              fontFamily: 'SatoshiBold',
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Text(
                                    "B-702, Sarthak the Sarjak, Bhaijipura Chokdi, PDPU \n"
                                        "Crossroad , Beside Pulse Mall, Seventhn Floor , Kudasan",
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.016),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: mQuery.size.width * 0.045,
                          ),
                          child: Column(
                            children: [
                              // Order Accepted
                              Row(
                                children: [
                                  Container(
                                    width: mQuery.size.width * 0.08,
                                    height: mQuery.size.height * 0.05,
                                    decoration: BoxDecoration(
                                      color: Color(0xff29b2fe),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                        size: mQuery.size.width * 0.04,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.03),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Order Accepted",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "18th Jul 2021, 8:09 pm",
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChecked1 = !isChecked1;
                                      });
                                    },
                                    child: Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.065,
                                      height:
                                      MediaQuery.of(context).size.height * 0.05,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: isChecked1 ? Colors.cyan : Colors.grey, // Change border color when selected
                                        ),
                                        color: isChecked1 ? Colors.cyan : Colors.transparent, // Change background color when selected
                                      ),
                                      child: isChecked1
                                          ? Icon(
                                        Icons.check,
                                        size: 14, // Adjust the icon size as needed
                                        color: Colors.white, // Change the check color
                                      )
                                          : null,
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                              SizedBox(height: mQuery.size.height * 0.02),
                    
                              // Order PickedUp
                              Row(
                                children: [
                                  Container(
                                    width: mQuery.size.width * 0.08,
                                    height: mQuery.size.height * 0.05,
                                    decoration: BoxDecoration(
                                      color: Color(0xff29b2fe),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                        size: mQuery.size.width * 0.04,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.03),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Order Recieved",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "18th Jul 2021, 8:09 pm",
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChecked2 = !isChecked2;
                                      });
                                    },
                                    child: Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.065,
                                      height:
                                      MediaQuery.of(context).size.height * 0.05,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: isChecked2 ? Colors.cyan : Colors.grey,
                                        ),
                                        color: isChecked2 ? Colors.cyan : Colors.transparent,
                                      ),
                                      child: isChecked2
                                          ? Icon(
                                        Icons.check,
                                        size: 14,
                                        color: Colors.white,
                                      )
                                          : null,
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                              SizedBox(height: mQuery.size.height * 0.02),
                    
                              // Order in Process
                              Row(
                                children: [
                                  Container(
                                    width: mQuery.size.width * 0.08,
                                    height: mQuery.size.height * 0.05,
                                    decoration: BoxDecoration(
                                      color: Color(0xff29b2fe),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                        size: mQuery.size.width * 0.04,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.03),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Order in Process",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "18th Jul 2021, 8:09 pm",
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChecked3 = !isChecked3;
                                      });
                                    },
                                    child: Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.065,
                                      height:
                                      MediaQuery.of(context).size.height * 0.05,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: isChecked3 ? Colors.cyan : Colors.grey,
                                        ),
                                        color: isChecked3 ? Colors.cyan : Colors.transparent,
                                      ),
                                      child: isChecked3
                                          ? Icon(
                                        Icons.check,
                                        size: 14,
                                        color: Colors.white,
                                      )
                                          : null,
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                              SizedBox(height: mQuery.size.height * 0.02),
                    
                              // Ready to Pickup
                              Row(
                                children: [
                                  Container(
                                    width: mQuery.size.width * 0.08,
                                    height: mQuery.size.height * 0.05,
                                    decoration: BoxDecoration(
                                      color: Color(0xff29b2fe),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                        size: mQuery.size.width * 0.04,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.03),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ready to Pickup",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "18th Jul 2021, 8:09 pm",
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChecked4 = !isChecked4;
                                      });
                                    },
                                    child: Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.065,
                                      height:
                                      MediaQuery.of(context).size.height * 0.05,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: isChecked4 ? Colors.cyan : Colors.grey,
                                        ),
                                        color: isChecked4 ? Colors.cyan : Colors.transparent,
                                      ),
                                      child: isChecked4
                                          ? Icon(
                                        Icons.check,
                                        size: 14,
                                        color: Colors.white,
                                      )
                                          : null,
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                              SizedBox(height: mQuery.size.height * 0.02),
                    
                              // Order on its way
                              Row(
                                children: [
                                  Container(
                                    width: mQuery.size.width * 0.08,
                                    height: mQuery.size.height * 0.05,
                                    decoration: BoxDecoration(
                                      color: Color(0xff29b2fe),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                        size: mQuery.size.width * 0.04,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.03),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Order on its way",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "18th Jul 2021, 8:09 pm",
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChecked5 = !isChecked5;
                                      });
                                    },
                                    child: Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.065,
                                      height:
                                      MediaQuery.of(context).size.height * 0.05,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: isChecked5 ? Colors.cyan : Colors.grey,
                                        ),
                                        color: isChecked5 ? Colors.cyan : Colors.transparent,
                                      ),
                                      child: isChecked5
                                          ? Icon(
                                        Icons.check,
                                        size: 14,
                                        color: Colors.white,
                                      )
                                          : null,
                                    ),
                                  )
                                ],
                              ),
                              Divider(),
                              SizedBox(height: mQuery.size.height * 0.02),
                    
                              // Order Delivered
                              Row(
                                children: [
                                  Container(
                                    width: mQuery.size.width * 0.08,
                                    height: mQuery.size.height * 0.05,
                                    decoration: BoxDecoration(
                                      color: Color(0xff29b2fe),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                        size: mQuery.size.width * 0.04,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.03),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Order Delivered",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "18th Jul 2021, 8:09 pm",
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChecked6 = !isChecked6;
                                      });
                                    },
                                    child: Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.065,
                                      height:
                                      MediaQuery.of(context).size.height * 0.05,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: isChecked6 ? Colors.cyan : Colors.grey,
                                        ),
                                        color: isChecked6 ? Colors.cyan : Colors.transparent,
                                      ),
                                      child: isChecked6
                                          ? Icon(
                                        Icons.check,
                                        size: 14,
                                        color: Colors.white,
                                      )
                                          : null,
                                    ),
                                  )
                                ],
                              ),
                              Divider(),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: mQuery.size.height*0.065,
                    margin: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width*.045
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff29b2fe),
                        borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(
                      child: Text("Done",style: TextStyle(
                          color: Colors.white,
                          fontSize: mQuery.size.height*0.024
                      ),),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height*0.02,)
                ],
              ),
            );
          },
        );
      },
    );
  }


  Widget buildOrderStatusItem(
      BuildContext context,
      String title,
      String subtitle,
      bool isChecked,
      Function onTap,
      ) {
    var mQuery = MediaQuery.of(context);

    return Row(
      children: [
        Container(
          width: mQuery.size.width * 0.08,
          height: mQuery.size.height * 0.05,
          decoration: BoxDecoration(
            color: Color(0xff29b2fe),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.lock,
              color: Colors.white,
              size: mQuery.size.width * 0.04,
            ),
          ),
        ),
        SizedBox(width: mQuery.size.width * 0.03),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.black54),
            )
          ],
        ),
        Expanded(child: SizedBox()),
        GestureDetector(
          onTap: () {
            onTap();
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.065,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isChecked ? Colors.cyan : Colors.grey,
              ),
              color: isChecked ? Colors.cyan : Colors.transparent,
            ),
            child: isChecked
                ? Icon(
              Icons.check,
              size: 14,
              color: Colors.white,
            )
                : null,
          ),
        )
      ],
    );
  }

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

                          return GestureDetector(
                            onTap: _orderStatusBottomSheet,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      date,
                                      style: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 184, 184, 184),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.0),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 1.0),
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
                                                width: 15,
                                                // Adjust the size as needed
                                                height: 15,
                                                // Adjust the size as needed
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                child: select
                                                    ? const Icon(
                                                        Icons.check,
                                                        size: 10,
                                                        color: Colors.blue,
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
                                                    fontWeight:
                                                        FontWeight.w600),
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
                            ),
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
