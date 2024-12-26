import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/responsive.dart';
import 'animated_description_text.dart';
import 'animated_image_container.dart';
import 'animated_subtitle.dart';
import 'animated_title_text.dart';
import 'custom_download_button.dart';
import 'toggle_theme_button.dart';

class HomeContainerViewBody extends StatelessWidget {
  const HomeContainerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!Responsive.isDesktop(context))
                size.width <= 250
                    ? const SizedBox.shrink()
                    : Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.05,
                          bottom: size.height * 0.1,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.23,
                            ),
                            const AnimatedImageContainer(),
                          ],
                        ),
                      ),
              const Responsive(
                  desktop: AnimatedTitleText(start: 40, end: 50),
                  largeMobile: AnimatedTitleText(start: 40, end: 35),
                  mobile: AnimatedTitleText(start: 35, end: 30),
                  tablet: AnimatedTitleText(start: 50, end: 40)),
              const AnimatedSubtitle(),
              Padding(
                padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
                child: const Responsive(
                  desktop: AnimatedDescriptionText(start: 14, end: 15),
                  largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                  mobile: AnimatedDescriptionText(start: 14, end: 12),
                  tablet: AnimatedDescriptionText(start: 17, end: 14),
                ),
              ),
              const CustomDownloadButton(),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h, top: 10.h),
                child: const ToggleThemeButton(),
              ),
            ],
          ),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context)) const AnimatedImageContainer(),
        const Spacer()
      ],
    );
  }
}
