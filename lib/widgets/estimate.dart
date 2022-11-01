// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/constants.dart';

class MyEstimate extends StatelessWidget {
  final String iconCustomer;
  final IconButton iconItem;
  final String mainText;
  final Function ontap;

  const MyEstimate(
      {Key? key,
      required this.iconCustomer,
      required this.iconItem,
      required this.mainText,
      required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap();
      },
      child: Container(
        width: 343.w,
        height: 48.h,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.06),
              offset: Offset(0.0, 4.0),
              blurRadius: 40,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    iconCustomer,
                    width: 18.w,
                    height: 18.h,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    mainText,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: kColorG,
                    ),
                  ),
                ],
              ),
              iconItem,
            ],
          ),
        ),
      ),
    );
  }
}
