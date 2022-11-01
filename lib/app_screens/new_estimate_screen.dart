// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/app_screens/add_customer_screen.dart';
import 'package:gutter_app/app_screens/add_line_item_screen.dart';
import 'package:gutter_app/constants.dart';
import 'package:gutter_app/widgets/button_widget.dart';
import 'package:gutter_app/widgets/estimate.dart';

class EstimateScreen extends StatelessWidget {
  const EstimateScreen({Key? key}) : super(key: key);

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
            icon: Icon(
              Icons.arrow_back,
              color: kColorG,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Estimate',
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
              'Customer Info',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: kColorG,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            MyEstimate(
              iconCustomer: 'assets/icons/user.png',
              iconItem: IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddCustomer()),
                  );
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kColorG6,
                ),
              ),
              mainText: 'Add Customer',
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddCustomer()));
              },
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Invoices',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: kColorG,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            MyEstimate(
              iconCustomer: 'assets/icons/invoice.png',
              iconItem: IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LineItem()),
                  );
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kColorG6,
                ),
              ),
              mainText: 'Add Line Item',
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LineItem()));
              },
            ),
            SizedBox(
              height: 350.h,
            ),
            MyButton(
              buttonText: 'DONE',
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
