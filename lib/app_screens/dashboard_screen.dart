// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/app_screens/new_estimate_screen.dart';
import 'package:gutter_app/app_screens/open_work.dart';
import 'package:gutter_app/app_screens/upcoming.dart';
import 'package:gutter_app/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  String text = '';
  _onTap(int index) async {
    switch (index) {
      case 3:
        setState(() {});
        await showMenu(
          color: kPrimaryBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50.r),
            ),
          ),
          context: context,
          position: RelativeRect.fromLTRB(1000.0, 1000.0, 0.0, 0.0),
          items: [
            PopupMenuItem(
              child: Text(
                "More",
                style: TextStyle(
                  color: kWhiteColor,
                ),
              ),
            ),
          ],
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Steve Smith',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: kTextBlue,
          ),
        ),
        leading: Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
          ),
        ),
        actions: [
          Container(
            width: 32.w,
            height: 32.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kWhiteColor,
            ),
            child: IconButton(
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: kWhiteColor,
                    isScrollControlled: true,
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16.r),
                      ),
                    ),
                    // ignore: sized_box_for_whitespace
                    builder: (context) => Container(
                          height: 199.h,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'assets/icons/job.png',
                                      ),
                                    ),
                                    Text(
                                      'New Job',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: kColorG5,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'assets/icons/estimate.png',
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EstimateScreen()),
                                        );
                                      },
                                      child: Text(
                                        'New Estimate',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: kColorG5,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'assets/icons/job.png',
                                      ),
                                    ),
                                    Text(
                                      'Update Job Status',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: kColorG5,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ));
              },
              icon: Icon(
                CupertinoIcons.add,
                color: kTextBlue,
                size: 15,
              ),
            ),
          ),
          SizedBox(
            width: 6.w,
          ),
          Container(
            width: 32.w,
            height: 32.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kWhiteColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.bell_fill,
                color: kTextBlue,
                size: 15,
              ),
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: kWhiteColor,
        selectedItemColor: kTextBlue,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/menu.png',
                scale: 5,
                //color: kColorG5,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/bxuser.png',
                scale: 5,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/timer.png',
                scale: 5,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/dots.png',
                scale: 5,
              ),
              label: ''),
        ],
        onTap: _onTap,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 37.h,
              ),
              Text(
                'Pacific Northwest Prowash',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: kTextBlue,
                ),
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
                    width: 0.75,
                    color: Color(0xFFDEDEDE),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OpenWork()),
                          );
                        },
                        child: Text(
                          'Open Work',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: kColorG,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/calender.png',
                        width: 18.w,
                        height: 18.w,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OpenWork()),
                    );
                  },
                  child: Container(
                    width: 342.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.r),
                          bottomRight: Radius.circular(8.r)),
                      border: Border.all(
                        width: 0.75.w,
                        color: Color(0xFFDEDEDE),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '9',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: kColorG4,
                        ),
                      ),
                    ),
                  ),
                ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UpcomingWork()),
                          );
                        },
                        child: Text(
                          'Upcoming',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: kColorG,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/calender.png',
                        width: 18.w,
                        height: 18.w,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UpcomingWork()),
                  );
                },
                child: Container(
                  width: 342.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8.r),
                        bottomRight: Radius.circular(8.r)),
                    border: Border.all(
                      width: 0.75.w,
                      color: Color(0xFFDEDEDE),
                    ),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UpcomingWork()),
                        );
                      },
                      child: Text(
                        '15',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: kColorG4,
                        ),
                      ),
                    ),
                  ),
                ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      child: Text(
                        'Commissions',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: kColorG,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/percentage.png',
                        width: 18.w,
                        height: 18.w,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 342.w,
                height: 114.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.r),
                      bottomRight: Radius.circular(8.r)),
                  border: Border.all(
                    width: 0.75.w,
                    color: Color(0xFFDEDEDE),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 17.h,
                              ),
                              Text(
                                '456',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: kTextBlue,
                                ),
                              ),
                              Text(
                                'Total Paid',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kColorG5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                          child: VerticalDivider(
                            color: kHintText2,
                            thickness: 1,
                            // indent: 20,
                            // endIndent: 45,
                            width: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 17.h,
                              ),
                              Text(
                                '55',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: kTextBlue,
                                ),
                              ),
                              Text(
                                'Total Unpaid',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: kColorG5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    new LinearPercentIndicator(
                      animation: true,
                      animationDuration: 2500,
                      width: 340.w,
                      lineHeight: 10.0.h,
                      percent: 0.7,
                      progressColor: kPrimaryBlue,
                      barRadius: Radius.circular(5.r),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: 342.w,
                height: 144.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: const [kTextBlue, kPrimaryBlue],
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 11.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Jobs',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: kWhiteColor,
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 64.h,
                          width: 64.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(255, 255, 255, 0.17),
                          ),
                          child: Image.asset(
                            'assets/icons/letter.png',
                            scale: 4,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '5678',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 31.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
