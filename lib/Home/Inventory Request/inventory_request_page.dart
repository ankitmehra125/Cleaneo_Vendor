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
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 20, bottom: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: mQuery.size.width*0.32,
                                height: mQuery.size.height*0.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.grey
                                  )
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: mQuery.size.height*0.06,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.network("https://5.imimg.com/data5/SELLER/Default/2021/2/BC/QR/RV/121956279/washing-machine-liquid-base.jpeg",
                                      fit: BoxFit.fill,),
                                    ),
                                    SizedBox(height: mQuery.size.height*0.006,),
                                    Text("Washing",style: TextStyle(
                                      fontSize: mQuery.size.height*0.013
                                    ),)
                                  ],
                                ),
                              ),
                              SizedBox(width: mQuery.size.width*0.06,),
                              Container(
                                width: mQuery.size.width*0.32,
                                height: mQuery.size.height*0.1,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.grey
                                    )
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: mQuery.size.height*0.06,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.network("https://images.ctfassets.net/ajjw8wywicb3/6F8D7fBER1U2p2ETaiSSmj/d56e9e4d07976099aced52de61221c74/LIQUID_Tide_Laundry_Liquid_370x320.jpg?fm=png",
                                        fit: BoxFit.fill,),
                                    ),
                                    SizedBox(height: mQuery.size.height*0.006,),
                                    Text("Liquid",style: TextStyle(
                                        fontSize: mQuery.size.height*0.013
                                    ),)
                                  ],
                                ),
                              ),
                              SizedBox(width: mQuery.size.width*0.06,),
                              Container(
                                width: mQuery.size.width*0.32,
                                height: mQuery.size.height*0.1,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 7,
                                          offset: Offset(0,0)
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: mQuery.size.height*0.06,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.network("https://sealingwell.usa72.wondercdn.com/uploads/image/60dd225503167.jpg",
                                        fit: BoxFit.fill,),
                                    ),
                                    SizedBox(height: mQuery.size.height*0.006,),
                                    Text("Packaging Materials",style: TextStyle(
                                      fontSize: mQuery.size.height*0.013
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: mQuery.size.height*0.05,),
                        Container(
                          width: mQuery.size.width*0.34,
                          height: mQuery.size.height*0.18,
                          padding: EdgeInsets.symmetric(
                              horizontal: mQuery.size.width*0.03
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 7,
                                offset: Offset(0,0)
                              )
                            ]
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: mQuery.size.width*0.12,
                                    height: mQuery.size.height*0.021,
                                    decoration: BoxDecoration(
                                      color: Color(0xff29b2fe),
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: Center(
                                      child: Text("22% OFF",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: mQuery.size.height*0.01
                                      ),),
                                    ),
                                  ),
                                  Expanded(child: SizedBox()),
                                  Icon(Icons.favorite_border_outlined,color: Colors.black54,
                                  size: mQuery.size.height*0.03,)
                                ],
                              ),
                              Image.network("https://rukminim2.flixcart.com/image/850/1000/kqttg280/washing-bar/b/z/m/bar-pack-of-6-250-gm-soap-detergent-bar-soap-6060-6-250-rin-original-imag4qgnjmbmznxd.jpeg?q=90&crop=false",
                               height: mQuery.size.height*0.06,)
                            ],
                          ),
                        )
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
