import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/responsive.dart';

class NavButtonItem extends StatelessWidget {
  const NavButtonItem({
    super.key,
    required this.text,
    this.onTap,
  });

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontSize: Responsive.getResponsiveValue(
                context,
                extraLargeScreen: 4.sp,
                largeMobile: 10.sp,
                desktop: 6.sp,
              ),
            ),
      ),
    );
  }
}
