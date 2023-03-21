import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_sharing_app/routes/routes_names.dart';
import 'package:food_sharing_app/widgets/button.dart';
import 'package:get/get.dart';

class SharePictureScreen extends StatefulWidget {
  final File file;
  SharePictureScreen({super.key, required this.file});

  @override
  State<SharePictureScreen> createState() => _SharePictureScreenState();
}

class _SharePictureScreenState extends State<SharePictureScreen> {
  bool isLoading = false;

  Future<void> uploadProductImage(File? file) async {
    Reference ref = FirebaseStorage.instance
        .ref()
        .child('mealImages' + DateTime.now().toString());
    UploadTask uploadTask = ref.putFile(file!);
    TaskSnapshot snapshot = await uploadTask;
    String dwnUrl = await snapshot.ref.getDownloadURL();
    setState(() {
      isLoading = false;
    });
    log(dwnUrl);
    log("Image uploaded");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
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
                      height: 430.h,
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
                            Container(
                              height: 200.r,
                              width: 200.w,
                              child: ClipOval(
                                child: Image.file(
                                  widget.file,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
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
                              onTap: () async {
                                setState(() {
                                  isLoading = true;
                                });
                                await uploadProductImage(widget.file);
                                Get.toNamed(RoutesNames.messageScreen);
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
