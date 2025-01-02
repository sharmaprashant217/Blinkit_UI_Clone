import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontweight,
      String? fontfamily,
      required double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontFamily: fontfamily ?? "regular",
          fontWeight: fontweight,
          color: color),
    );
  }
static CustomTextField({required TextEditingController controller}){
    return Container(
      height: 40,
      width: 346,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Color(0xFFC5C5C5)
        )
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search 'ice-cream'",
          prefixIcon: UiHelper.CustomImage(img: "search.png"),
          suffixIcon: UiHelper.CustomImage(img: "mic1.png"),
          border: InputBorder.none
        ),
      ),
    );
}
static CustomButton(VoidCallback callback,){
    return InkWell(
      onTap: callback,
      child: Container(
        height: 18,
        width: 30,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: Color(0xFF27AF34)
          )
        ),
        child: Center(child: Text("ADD",style: TextStyle(fontSize: 8,color:Color(0xFF27AF34)),)),
      ),
    );
}
}

