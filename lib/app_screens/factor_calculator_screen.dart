// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/constants.dart';
import 'package:gutter_app/widgets/button_widget.dart';
import 'package:gutter_app/widgets/text_field.dart';

class FactorCalculator extends StatelessWidget {
  const FactorCalculator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: kColorG,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Crew Factor Calculation',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: kTextBlue,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Crew Hour',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: kColorG,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            TextFieldWidget(
              hintText: 'Enter Crew Hour',
              suffixIcon: Icon(
                CupertinoIcons.clock,
                size: 15,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Hour Worked',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: kColorG,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            TextFieldWidget(
              hintText: 'Enter Hour Worked',
              suffixIcon: Icon(
                CupertinoIcons.clock,
                size: 15,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Total Labor Cost',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: kColorG,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            TextFieldWidget(
              hintText: 'Enter Total Labor Cost',
              suffixIcon: Icon(
                CupertinoIcons.money_dollar_circle,
                size: 15,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Area / Sqft',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: kColorG,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            TextFieldWidget(
              hintText: 'Enter Area / Sqft',
              suffixIcon: Icon(
                CupertinoIcons.rectangle_arrow_up_right_arrow_down_left,
                size: 15,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Labor Per Sqft',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: kColorG,
              ),
            ),
            // SizedBox(
            //   height: 16.h,
            // ),
            TextFormField(
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: kTextBlue),
              decoration: InputDecoration(
                suffixIcon: Icon(
                  CupertinoIcons.money_dollar_circle,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              height: 48.h,
            ),
            Center(
                child: MyButton(
              buttonText: 'CALCULATE',
              ontap: () {},
            ))
          ],
        ),
      ),
    );
  }
}
