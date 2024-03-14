import 'package:flutter/material.dart';

class InventoryRequestPage extends StatefulWidget {
  const InventoryRequestPage({Key? key}) : super(key: key);

  @override
  State<InventoryRequestPage> createState() => _InventoryRequestPageState();
}

class _InventoryRequestPageState extends State<InventoryRequestPage> {
  final List<Map<String, dynamic>> products = [
    {
      'image': 'https://www.jiomart.com/images/product/original/491436153/surf-excel-matic-top-load-liquid-detergent-2-l-product-images-o491436153-p491436153-0-202311021535.jpg?im=Resize=(1000,1000)',
      'price': '₹351',
    },
    {
      'image': 'https://rukminim2.flixcart.com/image/850/1000/kqttg280/washing-bar/b/z/m/bar-pack-of-6-250-gm-soap-detergent-bar-soap-6060-6-250-rin-original-imag4qgnjmbmznxd.jpeg?q=90&crop=false',
      'price': '₹260',
    },
    {
      'image': 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRVsyftzVoDV4Z1Ruf-Gufufg1uOMC_SLWQk4fs-8d1a5SItu9RRtU3nmpF-x8LpW0eQmbNi8ERVw54FFmD7HXPJZB0DYRu4_4EdIlYnnbbkFrYLtngULttHA',
      'price': '₹222',
    },
    {
      'image': 'https://www.bigbasket.com/media/uploads/p/l/216400_15-ariel-complete-detergent-washing-powder.jpg',
      'price': '₹222',
    },
  ];

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
              padding: EdgeInsets.only(
                top: mQuery.size.height * 0.058,
                bottom: mQuery.size.height * 0.03,
                left: mQuery.size.width * 0.045,
                right: mQuery.size.width * 0.045,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
                    "Inventory Request",
                    style: TextStyle(
                      fontSize: mQuery.size.height * 0.027,
                      color: Colors.white,
                      fontFamily: 'SatoshiBold',
                    ),
                  )
                ],
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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.3,
                      blurRadius: 1,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 20, bottom: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Choose your favorite Products",
                          style: TextStyle(fontSize: mQuery.size.height * 0.023),
                        ),
                        SizedBox(height: mQuery.size.height * 0.023),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: products.map((product) {
                              return Padding(
                                padding: EdgeInsets.only(right: mQuery.size.width * 0.08),
                                child: Container(
                                  width: mQuery.size.width * 0.4,
                                  height: mQuery.size.height * 0.24,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 0,
                                            blurRadius: 7,
                                            offset: Offset(0, 0))
                                      ],
                                      borderRadius: BorderRadius.circular(8)),
                                  child: ListView(
                                    children: [
                                      SizedBox(height: mQuery.size.height * 0.02),
                                      Image.network(
                                        product['image'],
                                        height: 90,
                                      ),
                                      SizedBox(height: mQuery.size.height * 0.026),
                                      Text("Price: ${product['price']}"),
                                      SizedBox(height: mQuery.size.height * 0.018),
                                      Container(
                                        width: mQuery.size.width * 0.3,
                                        height: mQuery.size.height * 0.03,
                                        decoration: BoxDecoration(
                                            color: Color(0xff29b2fe),
                                            borderRadius: BorderRadius.circular(6)),
                                        child: Center(
                                          child: Text(
                                            "Add to Cart",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.03,),
                        Text(
                          "Top Products",
                          style: TextStyle(fontSize: mQuery.size.height * 0.023),
                        ),
                        SizedBox(height: mQuery.size.height*0.02,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: products.map((product) {
                              return Padding(
                                padding: EdgeInsets.only(right: mQuery.size.width * 0.08),
                                child: Container(
                                  width: mQuery.size.width * 0.4,
                                  height: mQuery.size.height * 0.24,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 0,
                                            blurRadius: 7,
                                            offset: Offset(0, 0))
                                      ],
                                      borderRadius: BorderRadius.circular(8)),
                                  child: ListView(
                                    children: [
                                      SizedBox(height: mQuery.size.height * 0.02),
                                      Image.network(
                                        product['image'],
                                        height: 90,
                                      ),
                                      SizedBox(height: mQuery.size.height * 0.026),
                                      Text("Price: ${product['price']}"),
                                      SizedBox(height: mQuery.size.height * 0.018),
                                      Container(
                                        width: mQuery.size.width * 0.3,
                                        height: mQuery.size.height * 0.03,
                                        decoration: BoxDecoration(
                                            color: Color(0xff29b2fe),
                                            borderRadius: BorderRadius.circular(6)),
                                        child: Center(
                                          child: Text(
                                            "Add to Cart",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
