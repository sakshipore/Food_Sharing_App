import "package:flutter/material.dart";
import 'package:food_sharing_app/widgets/button.dart';
import 'package:get/get.dart';

class ClickPictureScreen extends StatelessWidget {
  const ClickPictureScreen({super.key});

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
            ],
          ),
        ),
      ),
    );
  }
}
