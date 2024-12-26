import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.prefix,
    required this.title,
  });

  final String prefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$prefix ',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 11.sp,
              ),
        ),
        ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              end: Alignment.centerRight,
              begin: Alignment.centerLeft,
              colors: Theme.of(context).brightness == Brightness.light
                  ? AppColors.gradientColors2
                  : AppColors.gradientColors4,
            ).createShader(bounds);
          },
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 11.sp,
                ),
          ),
        ),
      ],
    );
  }
}
