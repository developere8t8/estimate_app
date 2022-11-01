// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/app_screens/dashboard_screen.dart';
import 'package:gutter_app/app_screens/factor_calculator_screen.dart';
import 'package:gutter_app/constants.dart';
import 'package:gutter_app/widgets/button_widget.dart';
import 'package:gutter_app/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
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
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login With\nYour Credentials',
              style: TextStyle(
                color: kTextBlue,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFieldWidget(
              hintText: 'Phone Number',
              suffixIcon: Icon(
                CupertinoIcons.phone,
                color: kHintText,
                size: 15,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFieldWidget(
              hintText: 'Password',
              suffixIcon: Icon(
                CupertinoIcons.eye,
                size: 15,
                color: kHintText,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: kColorG,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            MyButton(
              buttonText: 'LOG IN',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDashboard()),
                );
              },
            ),
            SizedBox(
              height: 24.h,
            ),
            Center(
              child: Column(
                children: [
                  Wrap(
                    children: [
                      Text(
                        'Don’t have an account? ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: kColorG),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: kTextBlue),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      SizedBox(width: 9.w),
                      Text(
                        'OR',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: kColorG,
                        ),
                      ),
                      SizedBox(
                        width: 9.w,
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  Container(
                    width: 343.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: kWhite2,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/google.png',
                        width: 72.w,
                        height: 36.h,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: 343.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: kWhite2,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/apple.png',
                        width: 72.w,
                        height: 36.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
