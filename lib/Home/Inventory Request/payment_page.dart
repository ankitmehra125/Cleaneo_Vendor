
import 'package:cleaneo_vendor/Home/BotNav.dart';
import 'package:cleaneo_vendor/Home/Home_/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {


  int selectedPaymentMethod = -1;

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
              padding: const EdgeInsets.only(
                  top: 45, left: 16, right: 16, bottom: 20),
              child: GestureDetector(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context); // Use pop to go back
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
                      "Payment",
                      style: TextStyle(
                          fontSize: mQuery.size.height * 0.027,
                          color: Colors.white,
                          fontFamily: 'SatoshiBold'),
                    )
                  ],
                ),
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: mQuery.size.height * 0.02),
                      Container(
                        padding: EdgeInsets.only(left: 8, right: 16),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/cleaning.png",
                              width: 40,
                            ),
                            SizedBox(width: mQuery.size.width * 0.012),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cleaneo Wallet",
                                  style: TextStyle(
                                      fontSize: mQuery.size.height * 0.022,
                                      fontFamily: 'SatoshiBold'),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Available balance ",
                                      style: TextStyle(
                                          fontSize: mQuery.size.height * 0.0175,
                                          fontFamily: 'SatoshiMedium'),
                                    ),
                                    Text(
                                      "ADD MONEY",
                                      style: TextStyle(
                                          fontSize: mQuery.size.height * 0.0175,
                                          color: Color(0xff29b2fe),
                                          fontFamily: 'SatoshiMedium'),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Expanded(child: SizedBox()),
                            Row(
                              children: [
                                Container(
                                  width: mQuery.size.width * 0.06,
                                  height: 39,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xff29b2fe)),
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Container(
                                      width: mQuery.size.width * 0.035,
                                      height: mQuery.size.height * 0.02,
                                      decoration: BoxDecoration(
                                          color: Color(0xff29b2fe),
                                          shape: BoxShape.circle),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      SizedBox(height: mQuery.size.height * 0.015),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              width: double.infinity,
                              height: mQuery.size.height * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/money.png",
                                    width: 26,
                                  ),
                                  SizedBox(width: mQuery.size.width * 0.03),
                                  Text(
                                    "Cash",
                                    style: TextStyle(
                                        fontSize: mQuery.size.height * 0.019,
                                        fontFamily: 'SatoshiMedium'),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Radio(
                                    value: 0,
                                    groupValue: selectedPaymentMethod,
                                    onChanged: (int? value) {
                                      setState(() {
                                        selectedPaymentMethod = value!;
                                      });
                                    },
                                    activeColor: Colors.cyan,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.028),
                            Container(
                              width: double.infinity,
                              height: mQuery.size.height * 0.22,
                              // height: mQuery.size.height * 0.28,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Other Wallets/UPI",
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.0195,
                                              fontFamily: 'SatoshiMedium'),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Container(
                                          width: mQuery.size.width * 0.04,
                                          height: mQuery.size.height * 0.05,
                                          decoration: BoxDecoration(
                                              color: Color(0xff29b2fe),
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: Icon(Icons.add,
                                                color: Colors.white, size: 15),
                                          ),
                                        ),
                                        SizedBox(width: mQuery.size.width * 0.026),
                                        Text("Add New",
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.018,
                                              color: Color(0xff29b2fe),
                                              fontFamily: 'SatoshiMedium'),
                                        )
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/phonepe.png",
                                          width: 30,
                                        ),
                                        SizedBox(width: mQuery.size.width * 0.07),
                                        Text(
                                          "PhonePe",
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.019,
                                              fontFamily: 'SatoshiMedium'),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Radio(
                                          value: 2,
                                          groupValue: selectedPaymentMethod,
                                          onChanged: (int? value) {
                                            setState(() {
                                              selectedPaymentMethod = value!;
                                            });
                                          },
                                          activeColor: Colors.cyan,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/google-pay.svg",
                                          width: 30,
                                        ),
                                        SizedBox(width: mQuery.size.width * 0.07),
                                        Text(
                                          "GPay",
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.019,
                                              fontFamily: 'SatoshiMedium'),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Radio(
                                          value: 3,
                                          groupValue: selectedPaymentMethod,
                                          onChanged: (int? value) {
                                            setState(() {
                                              selectedPaymentMethod = value!;
                                            });
                                          },
                                          activeColor: Colors.cyan,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.028),
                            Container(
                              width: double.infinity,
                              height: mQuery.size.height * 0.28,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Credit/ Debit Cards",
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.02,
                                              fontFamily: 'SatoshiMedium'),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Container(
                                          width: mQuery.size.width * 0.04,
                                          height: mQuery.size.height * 0.05,
                                          decoration: BoxDecoration(
                                              color: Color(0xff29b2fe),
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: Icon(Icons.add,
                                                color: Colors.white, size: 15),
                                          ),
                                        ),
                                        SizedBox(width: mQuery.size.width * 0.026),
                                        Text(
                                          "Add New",
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.018,
                                              color: Color(0xff29b2fe),
                                              fontFamily: 'SatoshiMedium'),
                                        )
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                      children: [
                                        Container(
                                          width: mQuery.size.width * 0.13,
                                          height: mQuery.size.height * 0.04,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              borderRadius: BorderRadius.circular(6)),
                                          child: SvgPicture.asset(
                                              "assets/images/visa_card.svg"),
                                        ),
                                        SizedBox(width: mQuery.size.width * 0.03),
                                        Text(
                                          "6220 XXXX XXXX 4452",
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.019,
                                              fontFamily: 'SatoshiMedium'),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Radio(
                                          value: 4,
                                          groupValue: selectedPaymentMethod,
                                          onChanged: (int? value) {
                                            setState(() {
                                              selectedPaymentMethod = value!;
                                            });
                                          },
                                          activeColor: Colors.cyan,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: mQuery.size.width * 0.13,
                                          height: mQuery.size.height * 0.04,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              borderRadius: BorderRadius.circular(6)),
                                          child: SvgPicture.asset(
                                              "assets/images/mastercard.svg"),
                                        ),
                                        SizedBox(width: mQuery.size.width * 0.033),
                                        Text(
                                          "5555 XXXX XXXX 8888",
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.019,
                                              fontFamily: 'SatoshiMedium'),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Radio(
                                          value: 5,
                                          groupValue: selectedPaymentMethod,
                                          onChanged: (int? value) {
                                            setState(() {
                                              selectedPaymentMethod = value!;
                                            });
                                          },
                                          activeColor: Colors.cyan,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: mQuery.size.width * 0.13,
                                          height: mQuery.size.height * 0.04,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              borderRadius: BorderRadius.circular(6)),
                                          child: SvgPicture.asset(
                                              "assets/images/amex.svg"),
                                        ),
                                        SizedBox(width: mQuery.size.width * 0.035),
                                        Text(
                                          "4111 XXXX XXXX 7777",
                                          style: TextStyle(
                                              fontSize: mQuery.size.height * 0.019,
                                              fontFamily: 'SatoshiMedium'),
                                        ),
                                        Expanded(child: SizedBox()),
                                        Radio(
                                          value: 6,
                                          groupValue: selectedPaymentMethod,
                                          onChanged: (int? value) {
                                            setState(() {
                                              selectedPaymentMethod = value!;
                                            });
                                          },
                                          activeColor: Colors.cyan,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: mQuery.size.height * 0.025,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              color: Colors.white,
              height: mQuery.size.height * 0.02,),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          child: GestureDetector(
                            onTap: () {
                              if (selectedPaymentMethod == -1) {
                                // Show alert if no payment option is selected
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Colors.white,
                                      title: Text("Choose Payment Option", style: TextStyle(
                                          fontSize: mQuery.size.height * 0.02,
                                          fontFamily: 'SatoshiBold'
                                      ),),
                                      content: Container(
                                        height: mQuery.size.height * 0.06,
                                        child: Column(
                                          children: [
                                            SizedBox(height: mQuery.size.height * 0.01,),
                                            Text(
                                                "Please select your payment option."),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("OK"),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              } else {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                    return BotNav();
                                  }));
                                }
                            },
                            child: Container(
                              width: double.infinity,
                              height: mQuery.size.height * 0.054,
                              margin: EdgeInsets.symmetric(
                                  horizontal: mQuery.size.width * 0.045
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xff20b2fe),
                                  borderRadius: BorderRadius.circular(6)
                              ),
                              child: Center(
                                child: Text("Make Payment ", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: mQuery.size.height * 0.023,
                                    fontFamily: 'SatoshiBold'
                                ),),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height * 0.02,)
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
