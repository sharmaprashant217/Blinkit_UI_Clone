import 'package:flutter/material.dart';

import '../../widgets/uiHelper.dart';

class PrintScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF0CE),
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
            height: 30,
          ),
          UiHelper.CustomText(
              text: "Print Store",
              color: Color(0xFF000000),
              fontweight: FontWeight.bold,
              fontsize: 32,
              fontfamily: "bold"),
          UiHelper.CustomText(
              text: "Blinkit ensures secure prints at every stage",
              color: Color(0xFF9C9C9C),
              fontweight: FontWeight.bold,
              fontsize: 14,
              fontfamily: "bold"),
          SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Container(
                height: 163,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFFFFFFF)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UiHelper.CustomText(
                              text: "Documents",
                              color: Color(0xFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 14,
                              fontfamily: "bold"),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              UiHelper.CustomImage(img: "bullet.png"),
                              SizedBox(
                                width: 8,
                              ),
                              UiHelper.CustomText(
                                  text: "Paper quality: 70 GSM",
                                  color: Color(0xFF9C9C9C),
                                  fontweight: FontWeight.normal,
                                  fontsize: 14)
                            ],
                          ),
                          Row(
                            children: [
                              UiHelper.CustomImage(img: "bullet.png"),
                              SizedBox(
                                width: 8,
                              ),
                              UiHelper.CustomText(
                                  text: "Paper quality: 70 GSM",
                                  color: Color(0xFF9C9C9C),
                                  fontweight: FontWeight.normal,
                                  fontsize: 14)
                            ],
                          ),
                          Row(
                            children: [
                              UiHelper.CustomImage(img: "bullet.png"),
                              SizedBox(
                                width: 8,
                              ),
                              UiHelper.CustomText(
                                  text: "Single side prints",
                                  color: Color(0xFF9C9C9C),
                                  fontweight: FontWeight.normal,
                                  fontsize: 14)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 125,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF27AF34)
                                    ),
                                    onPressed: () {
                                      print("Upload Files");
                                    },
                                    child: UiHelper.CustomText(
                                        text: "Upload Files",
                                        color: Color(0xFFFFFFFF),
                                        fontweight: FontWeight.bold,
                                        fontsize: 13,
                                        fontfamily: "bold")),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(right: 20,top: 40,child: UiHelper.CustomImage(img: "image62.png"))
            ],
          )
        ],
      ),
    );
  }
}
