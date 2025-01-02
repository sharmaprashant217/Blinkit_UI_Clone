import 'package:flutter/material.dart';

import '../../widgets/uiHelper.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var data = [
    {'name': 'Lights, Diyas & Candles', 'img': 'imageH1.png'},
    {'name': 'Diwali Gifts', 'img': 'imageH2.png'},
    {'name': 'Appliances & Gadgets', 'img': 'imageH3.png'},
    {'name': 'Home & Living', 'img': 'imageH4.png'}
  ];


  var data1 = [
    {'name': 'Golden Glass Wooden Lid Candle', 'img': 'imageH21.png'},
    {'name': 'Royal Gulab Jamun By Bikano', 'img': 'imageH22.png'},
    {'name': 'Bikaji Bhujia \n', 'img': 'imageH23.png'}
  ];

  var data2 = [
    {'name': 'Vegetables & Fruits', 'img': 'imageH31.png'},
    {'name': 'Atta, Dal & Rice', 'img': 'imageH32.png'},
    {'name': 'Oil, Ghee & Masala', 'img': 'imageH33.png'},
    {'name': 'Dairy, Bread & Milk', 'img': 'imageH34.png'},
    {'name': 'Biscuits & Bakery', 'img': 'imageH35.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 34,
          ),
          Stack(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                color: Color(0xFFEC0505),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        UiHelper.CustomText(
                            text: "Blinkit in",
                            color: Color(0xFFFFFFFF),
                            fontweight: FontWeight.bold,
                            fontsize: 12,
                            fontfamily: "bold"),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        UiHelper.CustomText(
                            text: "16 minutes",
                            color: Color(0xFFFFFFFF),
                            fontweight: FontWeight.bold,
                            fontsize: 20,
                            fontfamily: "bold")
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        UiHelper.CustomText(
                            text: "HOME - ",
                            color: Color(0xFFFFFFFF),
                            fontweight: FontWeight.bold,
                            fontsize: 12,
                            fontfamily: "bold"),
                        UiHelper.CustomText(
                          text: "Sujal Dave, Ratanada, Jodhpur (Raj)   ",
                          color: Color(0xFFFFFFFF),
                          fontweight: FontWeight.normal,
                          fontsize: 12,
                        ),
                        UiHelper.CustomImage(
                            img: "arrow-down-sign-to-navigate 1.png")
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    UiHelper.CustomTextField(
                      controller: searchController,
                    )
                  ],
                ),
              ),
              Positioned(
                right: 15,
                bottom: 90,
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xFF000000),
                  child: Icon(
                    Icons.person,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 1,
          ),
          Container(
            height: 180,
            width: 375,
            color: Color(0xFFEC0505),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper.CustomImage(img: "imageC1.png"),
                    UiHelper.CustomImage(img: "imageC2.png"),
                    UiHelper.CustomText(
                        text: "Mega Diwali Sale",
                        color: Color(0xFFFFFFFF),
                        fontweight: FontWeight.bold,
                        fontsize: 18,
                        fontfamily: "PTSerif-Bold"),
                    UiHelper.CustomImage(img: "imageC2.png"),
                    UiHelper.CustomImage(img: "imageC1.png"),
                  ],
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 80,
                            width: 86,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFEAD3D3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  UiHelper.CustomText(
                                      text: data[index]['name']
                                          .toString(),
                                      color: Color(0xFF000000),
                                      fontweight: FontWeight.bold,
                                      fontsize: 10,
                                      fontfamily: "bold"),
                                  Positioned(
                                      top: 35,
                                      child: UiHelper.CustomImage(
                                          img: data[index]['img']
                                              .toString()))
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
          Container(
            height: 190,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data1.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 180,
                    width: 108,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            UiHelper.CustomImage(img:data1[index]['img'].toString()),
                            Padding(
                              padding: EdgeInsets.only(top: 98, left: 67),
                              child: UiHelper.CustomButton(() {
                                print("ADD");
                              }),
                            )
                          ],
                        ),
                        UiHelper.CustomText(
                            text: data1[index]['name'].toString(),
                            color: Color(0xFF000000),
                            fontweight: FontWeight.normal,
                            fontsize: 8),
                        Row(
                          children: [
                            UiHelper.CustomImage(img: "timer1.png"),
                            UiHelper.CustomText(
                                text: "16 MINS",
                                color: Color(0xFF9C9C9C),
                                fontweight: FontWeight.normal,
                                fontsize: 10)
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            UiHelper.CustomImage(img: "image47.png"),
                            UiHelper.CustomText(
                                text: "79",
                                color: Color(0xFF000000),
                                fontweight: FontWeight.bold,
                                fontsize: 15,
                                fontfamily: "bold")
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                UiHelper.CustomText(
                    text: "Grocery & Kitchen",
                    color: Color(0xFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold")
              ],
            ),
          ),
          Container(
            height: 110,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data2.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 88,
                    width: 71,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 71,
                          width: 78,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: data2[index]['img'].toString()),
                        ),
                        UiHelper.CustomText(
                            text: data2[index]['name'].toString(),
                            color: Color(0xFF000000),
                            fontweight: FontWeight.normal,
                            fontsize: 10)
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
