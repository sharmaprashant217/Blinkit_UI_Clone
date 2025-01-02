import 'package:flutter/material.dart';

import '../../widgets/uiHelper.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  var data1 = [
    {'name': 'Vegitables & Fruits', 'img': 'imageC11.png'},
    {'name': 'Atta, Dal & Rice', 'img': 'imageC12.png'},
    {'name': 'Oil, Ghee & Masala', 'img': 'imageC13.png'},
    {'name': 'Dairy, Bread & Milk', 'img': 'imageC14.png'},
    {'name': 'Biscuits & Bakery', 'img': 'imageC15.png'}
  ];
  var data2 = [
    {'name': 'Dry Fruits & Cereals', 'img': 'imageC21.png'},
    {'name': 'Kitchen & Appliances', 'img': 'imageC22.png'},
    {'name': 'Tea & Coffees', 'img': 'imageC23.png'},
    {'name': 'Ice Creams & much more', 'img': 'imageC24.png'},
    {'name': 'Noodles & Packet Food', 'img': 'imageC25.png'}
  ];

  var data3 = [
    {'name': 'Chips & Namkeens', 'img': 'imageC31.png'},
    {'name': 'Sweets & Chocalates', 'img': 'imageC32.png'},
    {'name': 'Drinks & Juices', 'img': 'imageC33.png'},
    {'name': 'Sauces & Spreads', 'img': 'imageC34.png'},
    {'name': 'Beauty & Cosmetics', 'img': 'imageC35.png'}
  ];

  var data4 = [
    {'img': 'imageC41.png'},
    {'img': 'imageC42.png'},
    {'img': 'imageC43.png'},
    {'img': 'imageC44.png'},
    {'img': 'imageC45.png'}
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
                color: Color(0xFFF7CB45),
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
                            color: Color(0xFF000000),
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
                            color: Color(0xFF000000),
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
                            color: Color(0xFF000000),
                            fontweight: FontWeight.bold,
                            fontsize: 12,
                            fontfamily: "bold"),
                        UiHelper.CustomText(
                          text: "Sujal Dave, Ratanada, Jodhpur (Raj)   ",
                          color: Color(0xFF000000),
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
                  backgroundColor: Color(0xFFFFFFFF),
                  child: Icon(
                    Icons.person,
                    color: Color(0xFF000000),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: UiHelper.CustomText(
                    text: "Grocery & Kitchen",
                    color: Color(0xFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold"),
              )
            ],
          ),
          Container(
            height: 110,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data1.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 110,
                    width: 75,
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: data1[index]['img'].toString()),
                        ),
                        UiHelper.CustomText(
                            text: data1[index]['name'].toString(),
                            color: Color(0xFF000000),
                            fontweight: FontWeight.normal,
                            fontsize: 10)
                      ],
                    ),
                  ),
                );
              },
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
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 110,
                    width: 75,
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 75,
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
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: UiHelper.CustomText(
                    text: "Snacks & Drinks",
                    color: Color(0xFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold"),
              )
            ],
          ),
          Container(
            height: 110,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data3.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 110,
                    width: 75,
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: data3[index]['img'].toString()),
                        ),
                        UiHelper.CustomText(
                            text: data3[index]['name'].toString(),
                            color: Color(0xFF000000),
                            fontweight: FontWeight.normal,
                            fontsize: 10)
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: UiHelper.CustomText(
                    text: "Household Essentials",
                    color: Color(0xFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 14,
                    fontfamily: "bold"),
              )
            ],
          ),
          Container(
            height: 80,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data4.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 70,
                    width: 75,
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: data4[index]['img'].toString()),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
