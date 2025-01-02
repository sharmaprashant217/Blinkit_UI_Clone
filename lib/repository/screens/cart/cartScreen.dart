import 'package:blinkit_series/repository/widgets/uiHelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
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
          SizedBox(
            height: 20,
          ),
          UiHelper.CustomImage(img: "shoppingcart1.png"),
          SizedBox(height: 20,),
          UiHelper.CustomText(
              text: "Reordering will be easy",
              color: Color(0xFF000000),
              fontweight: FontWeight.bold,
              fontsize: 16,
              fontfamily: "bold"),
          UiHelper.CustomText(text: "Items you order will show up here so you can buy", color: Color(0xFF000000), fontweight: FontWeight.bold, fontsize: 10,fontfamily: "bold"),
          UiHelper.CustomText(text: "them again easily", color: Color(0xFF000000), fontweight: FontWeight.bold, fontsize:10,fontfamily: "bold"),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                UiHelper.CustomText(text: "Bestseller", color: Color(0xFF000000), fontweight:FontWeight.bold, fontsize:16,fontfamily: "bold"),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image45.png"),
                      Padding(padding: EdgeInsets.only(top: 98,left: 67),
                        child: UiHelper.CustomButton((){print("ADD");}),
                      )
                    ],
                  ),
                  UiHelper.CustomText(text: "Amul Taaza Toned", color: Color(0xFF000000), fontweight:FontWeight.normal, fontsize: 8),
                  UiHelper.CustomText(text: "Fresh Milk", color: Color(0xFF000000), fontweight:FontWeight.normal, fontsize: 8),
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "timer1.png"),
                      UiHelper.CustomText(text: "16 MINS", color: Color(0xFF9C9C9C), fontweight:FontWeight.normal, fontsize:10)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "image47.png"),
                      UiHelper.CustomText(text: "27", color: Color(0xFF000000), fontweight: FontWeight.bold, fontsize: 15,fontfamily: "bold")
                    ],
                  )
                ],
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image44.png"),
                      Padding(padding: EdgeInsets.only(top: 98,left: 67),
                        child: UiHelper.CustomButton((){print("ADD");}),
                      )
                    ],
                  ),
                  UiHelper.CustomText(text: "Potato (Aloo)", color: Color(0xFF000000), fontweight:FontWeight.normal, fontsize: 8),
                  UiHelper.CustomText(text: "", color: Color(0xFF000000), fontweight:FontWeight.normal, fontsize: 8),
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "timer1.png"),
                      UiHelper.CustomText(text: "16 MINS", color: Color(0xFF9C9C9C), fontweight:FontWeight.normal, fontsize:10)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "image47.png"),
                      UiHelper.CustomText(text: "37", color: Color(0xFF000000), fontweight: FontWeight.bold, fontsize: 15,fontfamily: "bold")
                    ],
                  )
                ],
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image46.png"),
                      Padding(padding: EdgeInsets.only(top: 98,left: 67),
                        child: UiHelper.CustomButton((){print("ADD");}),
                      )
                    ],
                  ),
                  UiHelper.CustomText(text: "Hybrid Tomato", color: Color(0xFF000000), fontweight:FontWeight.normal, fontsize: 8),
                  UiHelper.CustomText(text: "", color: Color(0xFF000000), fontweight:FontWeight.normal, fontsize: 8),
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "timer1.png"),
                      UiHelper.CustomText(text: "16 MINS", color: Color(0xFF9C9C9C), fontweight:FontWeight.normal, fontsize:10)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      UiHelper.CustomImage(img: "image47.png"),
                      UiHelper.CustomText(text: "37", color: Color(0xFF000000), fontweight: FontWeight.bold, fontsize: 15,fontfamily: "bold")
                    ],
                  )
                ],
              ),
            ],
          ),)

        ],
      ),
    );
  }
}
