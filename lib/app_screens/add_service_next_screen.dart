// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/constants.dart';
import 'package:gutter_app/widgets/text_field.dart';

class NextService extends StatelessWidget {
  const NextService({Key? key}) : super(key: key);

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
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 16.w),
            child: InkWell(
              onTap: () {},
              child: Text(
                'ADD',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: kTextBlue,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 7.41.h,
                ),
                Text(
                  'New Line Item',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: kTextBlue,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'Custom Service - On Site Estimate',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: kTextGreen,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: kHintText2,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                TextFieldWidget(
                  hintText: 'Service',
                  suffixIcon: Icon(
                    Icons.arrow_downward,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFieldWidget(
                  hintText: 'Sub Service',
                  suffixIcon: Icon(
                    Icons.arrow_downward,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFieldWidget(
                  hintText: 'Surface Condition',
                  suffixIcon: Icon(
                    Icons.arrow_downward,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.33.h,
                ),
                Text(
                  'Quantity',
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
                  hintText: '4',
                  suffixIcon: Icon(
                    CupertinoIcons.arrow_up_down,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Unit Price',
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
                  hintText: 'Enter Unit price',
                  suffixIcon: Icon(
                    CupertinoIcons.money_dollar_circle,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Price',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: kColorG3,
                      ),
                    ),
                    Text(
                      '\$60.00',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: kColorG3,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Taxable',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: kColorG,
                      ),
                    ),
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.toggle_on,
                    //     color: kTextGreen,
                    //     size: 25,
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 53.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
