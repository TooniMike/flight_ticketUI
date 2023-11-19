import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(12),
          horizontal: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            text,
            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
