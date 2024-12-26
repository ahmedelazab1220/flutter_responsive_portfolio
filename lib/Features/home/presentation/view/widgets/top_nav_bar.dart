import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/images.dart';
import '../../../../../Core/utils/responsive.dart';
import 'menu_button.dart';
import 'nav_button_list.dart';
import 'whatsapp_button.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: !Responsive.isLargeMobile(context)
              ? MenuButton(
                  onTap: () => Scaffold.of(context).openDrawer(),
                )
              : const SizedBox.shrink(),
        ),
        !Responsive.isLargeMobile(context)
            ? Image.asset(AppImages.triangle)
            : size.width <= 250
                ? const SizedBox.shrink()
                : MenuButton(
                    onTap: () => Scaffold.of(context).openDrawer(),
                  ),
        const Spacer(
          flex: 2,
        ),
        if (!Responsive.isLargeMobile(context)) const NavButtonList(),
        const Spacer(
          flex: 2,
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: size.width <= 250
              ? const SizedBox.shrink()
              : const WhatsappButton(),
        ),
        const Spacer(),
      ],
    );
  }
}
