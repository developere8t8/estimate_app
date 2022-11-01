import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/constants.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Function ontap;
  const MyButton({
    Key? key,
    required this.buttonText,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 48.h,
      child: OutlinedButton(
        onPressed: () {
          ontap();
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          )),
          backgroundColor: MaterialStateProperty.all(kPrimaryBlue),
          foregroundColor: MaterialStateProperty.all(kWhiteColor),
          padding:
              MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        child: Text(buttonText),
      ),
    );
  }
}
