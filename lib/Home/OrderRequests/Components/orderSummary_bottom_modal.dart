import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

void orderSummary(BuildContext context) {
  var mQuery = MediaQuery.of(context);
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
          width: double.infinity,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 24.0, top: 18.0),
                child: Row(
                  children: [
                    Text(
                      "Order Summary",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: mQuery.size.height * 0.01,
              ),
              Container(
                height: mQuery.size.height * 0.1,
                color: const Color(0xFFEBF7ED),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: ProfilePicture(
                        name: "",
                        radius: 24,
                        fontsize: 10,
                        img:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwKKzV4oKveaDEmBr38LXuMWTho1d1-mjOOcjau6XJ1A&s",
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Shweta",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ));
    },
  );
}
