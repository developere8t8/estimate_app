// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/constants.dart';
import 'package:gutter_app/widgets/button_widget.dart';
import 'package:gutter_app/widgets/text_field.dart';

class NewCustomer extends StatelessWidget {
  const NewCustomer({Key? key}) : super(key: key);

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
            // ignore: prefer_const_constructors
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
                  'New Customer',
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
                  'Personal',
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
                  hintText: 'First Name',
                  suffixIcon: Icon(
                    CupertinoIcons.person,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFieldWidget(
                  hintText: 'Last Name',
                  suffixIcon: Icon(
                    CupertinoIcons.person,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFieldWidget(
                  hintText: 'Display Name',
                  suffixIcon: Icon(
                    CupertinoIcons.person,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFieldWidget(
                  hintText: 'Email Address',
                  suffixIcon: Icon(
                    CupertinoIcons.envelope,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFieldWidget(
                  hintText: 'Phone Number',
                  suffixIcon: Icon(
                    CupertinoIcons.phone,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Address',
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
                  hintText: 'Add Address',
                  suffixIcon: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Company',
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
                  hintText: 'Home Number',
                  suffixIcon: Icon(
                    CupertinoIcons.phone,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFieldWidget(
                  hintText: 'Company',
                  suffixIcon: Icon(
                    CupertinoIcons.home,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFieldWidget(
                  hintText: 'Job Title',
                  suffixIcon: Icon(
                    CupertinoIcons.bag,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Customer Notes',
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
                  hintText: 'Add Customer Notes',
                  suffixIcon: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                MyButton(
                  buttonText: 'SAVE',
                  ontap: () {},
                ),
                SizedBox(
                  height: 45.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
