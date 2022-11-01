// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/constants.dart';

class SelectCustomer extends StatelessWidget {
  final NetworkImage image;
  final String contactName;
  const SelectCustomer(
      {Key? key, required this.image, required this.contactName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: image,
        ),
        SizedBox(
          width: 12.w,
        ),
        Text(
          contactName,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: kColorG3,
          ),
        ),
      ],
    );
  }
}
