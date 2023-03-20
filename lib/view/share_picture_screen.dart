import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_sharing_app/widgets/button.dart';
import 'package:get/get.dart';

class SharePictureScreen extends StatelessWidget {
  const SharePictureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Button(
                height: 45,
                width: 45,
                radius: 22,
                icon: Icons.arrow_back_outlined,
                onTap: () {
                  Get.back();
                },
              ),
              SvgPicture.asset("assets/images/baby S.svg"),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 300,
                decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/images/Plate.svg"),
                      Center(
                        child: Text(
                          "Will you eat this?",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Button(
                        height: 45,
                        width: 45,
                        radius: 22,
                        icon: Icons.check,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}