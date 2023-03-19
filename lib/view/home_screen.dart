import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import 'package:food_sharing_app/routes/routes_names.dart';
import 'package:food_sharing_app/view/click_picture_screen.dart';
import "package:get/get.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 490.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 65.w),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(RoutesNames.clickPictureScreen);
                },
                child: Container(
                  height: 56.h,
                  width: 230.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    color: Color(0xff3E8B3A),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 14.h),
                    child: Text(
                      "Share your meal",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffFAFAFA),
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
