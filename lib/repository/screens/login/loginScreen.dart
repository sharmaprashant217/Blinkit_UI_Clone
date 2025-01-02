import 'package:blinkit_series/repository/screens/bottomNav/bottomNavScreen.dart';
import 'package:blinkit_series/repository/widgets/uiHelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomImage(img: "image2.png"),
            SizedBox(
              height: 5,
            ),
            UiHelper.CustomImage(img: "image3.png"),
            UiHelper.CustomText(
                text: "India's last minute app",
                color: Color(0xFF000000),
                fontweight: FontWeight.bold,
                fontsize: 20,
                fontfamily: "bold"),
            SizedBox(
              height: 5,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFFFFFF)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    UiHelper.CustomText(
                        text: "Prashant",
                        color: Color(0xFF000000),
                        fontweight: FontWeight.w500,
                        fontsize: 14),
                    SizedBox(
                      height: 5,
                    ),
                    UiHelper.CustomText(
                        text: "8791XXXXXX",
                        color: Color(0xFF9C9C9C),
                        fontweight: FontWeight.bold,
                        fontsize: 14,
                        fontfamily: "bold"),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));
                            print("Login with Zomato");
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFE23744),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomText(
                                  text: "Login with",
                                  color: Color(0xFFFFFFFF),
                                  fontweight: FontWeight.bold,
                                  fontsize: 14,
                                  fontfamily: "bold"),
                              SizedBox(
                                width: 5,
                              ),
                              UiHelper.CustomImage(img: "image4.png")
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    UiHelper.CustomText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: Color(0xFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontsize: 10),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: (){
                        print("login with mobile no");
                      },
                      child: UiHelper.CustomText(
                          text: "or login with phone number",
                          color: Color(0xFF269235),
                          fontweight: FontWeight.normal,
                          fontsize: 14),
                    )
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
