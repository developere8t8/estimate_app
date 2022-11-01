// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/app_screens/add_service_screen.dart';
import 'package:gutter_app/constants.dart';
import 'package:gutter_app/widgets/button_widget.dart';

class LineItem extends StatelessWidget {
  const LineItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    Future openDialog() => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: kWhiteColor,
            content: Builder(
              builder: (context) {
                return SizedBox(
                  height: 400.h,
                  width: 375.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: kColorG,
                            ),
                          ),
                          InkWell(
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
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: kColorG2,
                            ),
                          ),
                          Text(
                            'Discount',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: kColorG6,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Type',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: kColorG2,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      MyButton(buttonText: 'Fixed Amound (\$)', ontap: () {}),
                      SizedBox(
                        height: 10.h,
                      ),
                      MyButton(buttonText: 'Percentage (%)', ontap: () {}),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(
                        thickness: 0.75,
                        color: kBorderColor,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Amount',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: kColorG2,
                            ),
                          ),
                          Text(
                            '\$60.00',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: kColorG6,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Discount Name Appear On Invoice.',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: kHintText2,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: kColorG,
            )),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Line Item',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: kTextBlue,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Services',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: kColorG,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddService()),
                        );
                      },
                      child: Text(
                        'Service Price Book',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: kTextBlue,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 342.w,
                  height: 41.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.r),
                        topRight: Radius.circular(8.r)),
                    border: Border.all(
                      width: 0.75.w,
                      color: Color(0xFFDEDEDE),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              onPressed: () {},
                              icon: Icon(
                                CupertinoIcons.add,
                                size: 15,
                                color: kColorAqua,
                              ),
                            ),
                            SizedBox(
                              width: 10.67.w,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AddService()),
                                );
                              },
                              child: Text(
                                'Add Services',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kColorG,
                                ),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AddService()),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: kColorG6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 342.w,
                  height: 280.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8.r),
                        bottomRight: Radius.circular(8.r)),
                    border: Border.all(
                      width: 0.75.w,
                      color: Color(0xFFDEDEDE),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 13.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.minus_circle_fill,
                              size: 15,
                              color: kColorRed,
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            Text(
                              'Custom Services - Custom Job',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: kColorBlack,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 25.w,
                                ),
                                Text(
                                  'Qty 1',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorAqua2,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                  child: VerticalDivider(
                                    color: Color(0xFFDEDEDE),
                                    thickness: 0.75,
                                    // indent: 20,
                                    // endIndent: 45,
                                  ),
                                ),
                                Text(
                                  '\$14.00/ea',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kTextGreen,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\$14.00',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: kTextBlue,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        SizedBox(
                          width: 314.w,
                          child: Divider(
                            color: Color(0xFFDEDEDE),
                            thickness: 0.75,
                            // indent: 20,
                            // endIndent: 45,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.minus_circle_fill,
                              size: 15,
                              color: kColorRed,
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            Text(
                              'Custom Services - Custom Job',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: kColorBlack,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 25.w,
                                ),
                                Text(
                                  'Qty 1',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorAqua2,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                  child: VerticalDivider(
                                    color: Color(0xFFDEDEDE),
                                    thickness: 0.75,
                                    // indent: 20,
                                    // endIndent: 45,
                                  ),
                                ),
                                Text(
                                  '\$14.00/ea',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kTextGreen,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\$14.00',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: kTextBlue,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        SizedBox(
                          width: 314.w,
                          child: Divider(
                            color: Color(0xFFDEDEDE),
                            thickness: 0.75,
                            // indent: 20,
                            // endIndent: 45,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.minus_circle_fill,
                              size: 15,
                              color: kColorRed,
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            Text(
                              'Custom Services - Custom Job',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: kColorBlack,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 25.w,
                                ),
                                Text(
                                  'Qty 1',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorAqua2,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                  child: VerticalDivider(
                                    color: Color(0xFFDEDEDE),
                                    thickness: 0.75,
                                    // indent: 20,
                                    // endIndent: 45,
                                  ),
                                ),
                                Text(
                                  '\$14.00/ea',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kTextGreen,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\$14.00',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: kTextBlue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Materials',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: kColorG,
                      ),
                    ),
                    Text(
                      'Material Price Book',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: kTextBlue,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 342.w,
                  height: 41.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.r),
                        topRight: Radius.circular(8.r)),
                    border: Border.all(
                      width: 0.75.w,
                      color: Color(0xFFDEDEDE),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              onPressed: () {},
                              icon: Icon(
                                CupertinoIcons.add,
                                size: 15,
                                color: kColorAqua,
                              ),
                            ),
                            SizedBox(
                              width: 10.67.w,
                            ),
                            Text(
                              'Add Services',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorG,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                            color: kColorG6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 342.w,
                  height: 280.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8.r),
                        bottomRight: Radius.circular(8.r)),
                    border: Border.all(
                      width: 0.75.w,
                      color: Color(0xFFDEDEDE),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 13.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.minus_circle_fill,
                              size: 15,
                              color: kColorRed,
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            Text(
                              'Custom Services - Custom Job',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: kColorBlack,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 25.w,
                                ),
                                Text(
                                  'Qty 1',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorAqua2,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                  child: VerticalDivider(
                                    color: Color(0xFFDEDEDE),
                                    thickness: 0.75,
                                    // indent: 20,
                                    // endIndent: 45,
                                  ),
                                ),
                                Text(
                                  '\$14.00/ea',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kTextGreen,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\$14.00',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: kTextBlue,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        SizedBox(
                          width: 314.w,
                          child: Divider(
                            color: Color(0xFFDEDEDE),
                            thickness: 0.75,
                            // indent: 20,
                            // endIndent: 45,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.minus_circle_fill,
                              size: 15,
                              color: kColorRed,
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            Text(
                              'Custom Services - Custom Job',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: kColorBlack,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 25.w,
                                ),
                                Text(
                                  'Qty 1',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorAqua2,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                  child: VerticalDivider(
                                    color: Color(0xFFDEDEDE),
                                    thickness: 0.75,
                                    // indent: 20,
                                    // endIndent: 45,
                                  ),
                                ),
                                Text(
                                  '\$14.00/ea',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kTextGreen,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\$14.00',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: kTextBlue,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        SizedBox(
                          width: 314.w,
                          child: Divider(
                            color: Color(0xFFDEDEDE),
                            thickness: 0.75,
                            // indent: 20,
                            // endIndent: 45,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.minus_circle_fill,
                              size: 15,
                              color: kColorRed,
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            Text(
                              'Custom Services - Custom Job',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: kColorBlack,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 25.w,
                                ),
                                Text(
                                  'Qty 1',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kColorAqua2,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                  child: VerticalDivider(
                                    color: Color(0xFFDEDEDE),
                                    thickness: 0.75,
                                    // indent: 20,
                                    // endIndent: 45,
                                  ),
                                ),
                                Text(
                                  '\$14.00/ea',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kTextGreen,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '\$14.00',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: kTextBlue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 342.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      width: 0.75.w,
                      color: kColorAqua3,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: kColorG2,
                          ),
                        ),
                        Text(
                          '\$60.00',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: kColorG2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  'Discount',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: kColorG,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 342.w,
                  height: 41.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      width: 0.75.w,
                      color: kBorderColor,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.add,
                              size: 15,
                              color: kTextBlue,
                            ),
                            SizedBox(
                              width: 10.67.w,
                            ),
                            Text(
                              'Add Discount',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: kColorG,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {
                              openDialog();
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: kColorG6,
                            ))
                      ],
                    ),
                  ),
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
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                      onPressed: () {},
                      icon: Icon(
                        Icons.toggle_on,
                        size: 25,
                        color: kTextGreen,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Divider(
                  thickness: 0.75,
                  color: Color(0xFFDADADA),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Acme Tax Rates (8.5%)',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: kColorG2,
                      ),
                    ),
                    Text(
                      '\$0.00',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: kColorG2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: kColorG2,
                      ),
                    ),
                    Text(
                      '\$60.00',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: kColorG2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                MyButton(
                  buttonText: 'DONE',
                  ontap: () {},
                ),
                SizedBox(
                  height: 45.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
