// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/app_screens/add_service_next_screen.dart';
import 'package:gutter_app/constants.dart';
import 'package:gutter_app/widgets/text_field.dart';

class AddService extends StatelessWidget {
  const AddService({Key? key}) : super(key: key);

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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price Book',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: kTextBlue,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                TextFieldWidget(
                  hintText: 'Search Here',
                  suffixIcon: Icon(
                    CupertinoIcons.search,
                    size: 20,
                    color: kTextBlue,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Northwest Concrete Coatings',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorG2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Pro will provide you a quote if the work you need to\ndo.......',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: kHintText2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Northwest Concrete Coatings',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorG2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Pro will provide you a quote if the work you need to\ndo.......',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: kHintText2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Northwest Concrete Coatings',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorG2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Pro will provide you a quote if the work you need to\ndo.......',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: kHintText2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Northwest Concrete Coatings',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorG2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Pro will provide you a quote if the work you need to\ndo.......',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: kHintText2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Northwest Concrete Coatings',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorG2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Pro will provide you a quote if the work you need to\ndo.......',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: kHintText2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Northwest Concrete Coatings',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorG2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Pro will provide you a quote if the work you need to\ndo.......',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: kHintText2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Northwest Concrete Coatings',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorG2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Pro will provide you a quote if the work you need to\ndo.......',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: kHintText2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Northwest Concrete Coatings',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorG2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Pro will provide you a quote if the work you need to\ndo.......',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: kHintText2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Northwest Concrete Coatings',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorG2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Pro will provide you a quote if the work you need to\ndo.......',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: kHintText2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Northwest Concrete Coatings',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: kColorG2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NextService(),
                        ));
                  },
                  child: Text(
                    'Pro will provide you a quote if the work you need to\ndo.......',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: kHintText2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  height: 64.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
