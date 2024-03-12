import 'package:flutter/material.dart';

class Cp extends StatefulWidget {
  const Cp({super.key});

  @override
  State<Cp> createState() => _TSState();
}

class _TSState extends State<Cp> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: mQuery.size.height * 0.03),
            Text(
              "Content Policy",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: mQuery.size.height * 0.02),
            Text(
              "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: mQuery.size.height * 0.01),
            Text(
              "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: mQuery.size.height * 0.01),
            Text(
              "Welcome to our demo service! Before you begin using our platform, please read the following Terms of Service carefully. By accessing or using our service, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our service.",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
