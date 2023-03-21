import 'dart:developer';
import 'dart:io';

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_sharing_app/routes/routes_names.dart';
import 'package:food_sharing_app/widgets/button.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ClickPictureScreen extends StatefulWidget {
  const ClickPictureScreen({super.key});

  @override
  State<ClickPictureScreen> createState() => _ClickPictureScreenState();
}

class _ClickPictureScreenState extends State<ClickPictureScreen> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
      Get.toNamed(RoutesNames.sharePictureScreen, arguments: File(image.path));
    } on PlatformException catch (e) {
      log("Failed to pick image: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                height: 5.h,
              ),
              Image.asset("assets/images/babys.png"),
              Container(
                width: MediaQuery.of(context).size.width,
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
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("assets/images/Fork.svg"),
                          SizedBox(
                            width: 20.w,
                          ),
                          Stack(
                            children: [
                              SvgPicture.asset("assets/images/Corners.svg"),
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: SvgPicture.asset("assets/images/Plate.svg"),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          SvgPicture.asset("assets/images/Spoon.svg"),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: Text(
                          "Click your meal",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Button(
                        height: 45,
                        width: 45,
                        radius: 22,
                        icon: Icons.camera_alt_rounded,
                        onTap: () async {
                          pickImage();
                        },
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
