// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gutter_app/app_screens/new_customer_screen.dart';
import 'package:gutter_app/constants.dart';
import 'package:gutter_app/widgets/select_customer.dart';
import 'package:gutter_app/widgets/text_field.dart';

class AddCustomer extends StatelessWidget {
  const AddCustomer({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.only(right: 8),
            child: Container(
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
                      builder: (context) => Container(
                            height: 151.h,
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
                                          'assets/icons/user2.png',
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const NewCustomer()),
                                          );
                                        },
                                        child: Text(
                                          'Create New Customer',
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
                                          'assets/icons/pin.png',
                                        ),
                                      ),
                                      Text(
                                        'Select From Address Book',
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
                Text(
                  'Select Customer',
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
                  hintText: 'Search By Name',
                  suffixIcon: Icon(
                    CupertinoIcons.search,
                    color: kTextBlue,
                    size: 20,
                  ),
                ),
                SizedBox(
                  height: 21.h,
                ),
                SelectCustomer(
                    image: NetworkImage(
                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
                    contactName: 'Northwest Concrete Coatings'),
                SizedBox(
                  height: 42.h,
                ),
                SelectCustomer(
                    image: NetworkImage(
                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
                    contactName: 'Keith Banister'),
                SizedBox(
                  height: 42.h,
                ),
                SelectCustomer(
                    image: NetworkImage(
                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
                    contactName: 'Lululemon Athletica'),
                SizedBox(
                  height: 42.h,
                ),
                SelectCustomer(
                    image: NetworkImage(
                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
                    contactName: 'Beverly Aabjerg'),
                SizedBox(
                  height: 42.h,
                ),
                SelectCustomer(
                    image: NetworkImage(
                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
                    contactName: 'Northwest Concrete Coatings'),
                SizedBox(
                  height: 42.h,
                ),
                SelectCustomer(
                    image: NetworkImage(
                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
                    contactName: 'Keith Banister'),
                SizedBox(
                  height: 42.h,
                ),
                SelectCustomer(
                    image: NetworkImage(
                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
                    contactName: 'Lululemon Athletica'),
                SizedBox(
                  height: 42.h,
                ),
                SelectCustomer(
                    image: NetworkImage(
                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
                    contactName: 'Beverly Aabjerg'),
                SizedBox(
                  height: 42.h,
                ),
                SelectCustomer(
                    image: NetworkImage(
                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
                    contactName: 'Lululemon Athletica'),
                SizedBox(
                  height: 42.h,
                ),
                SelectCustomer(
                    image: NetworkImage(
                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
                    contactName: 'Northwest Concrete Coatings'),
                SizedBox(
                  height: 42.h,
                ),
                SelectCustomer(
                    image: NetworkImage(
                        'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg'),
                    contactName: 'Keith Banister'),
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
