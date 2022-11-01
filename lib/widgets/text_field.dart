import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/constants.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final Icon suffixIcon;
  const TextFieldWidget(
      {Key? key, required this.hintText, required this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 48.h,
      child: TextField(
        style: TextStyle(
            fontSize: 14.sp, fontWeight: FontWeight.w400, color: kTextBlue),
        decoration: InputDecoration(
          // ignore: prefer_const_constructors
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(color: kBorderColor, width: 0.75.w),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(color: kBorderColor, width: 0.75.w),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
          // filled: true,
          // fillColor: kWhiteColor,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 14.sp, fontWeight: FontWeight.w400, color: kHintText),
        ),
      ),
    );
  }
}
