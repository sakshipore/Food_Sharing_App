import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/GOOD JOB.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
