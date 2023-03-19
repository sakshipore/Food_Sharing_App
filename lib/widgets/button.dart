import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  final double height;
  final double width;
  final IconData icon;
  final VoidCallback onTap;
  Button({
    super.key,
    required this.height,
    required this.width,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          color: Color(0xff3E8B3A),
          boxShadow: [
            BoxShadow(
              color: Color(0xff0000004D).withOpacity(0.3),
              blurRadius: 4.r,
              spreadRadius: 0.r,
              offset: Offset(0, 4),
            ),
          ],
        ),
        // child: Icon(
        //   icon: Icon
        //   color: Color(0xffF1F1F2),
        //   )
      ),
    );
  }
}
