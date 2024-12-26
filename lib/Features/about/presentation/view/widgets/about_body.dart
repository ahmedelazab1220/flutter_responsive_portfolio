import 'package:flutter/material.dart';
import 'package:portfolio/Features/home/presentation/view/widgets/animated_image_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/responsive.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveConstraint = Responsive.getResponsiveValue(
      context,
      extraLargeScreen: 170.w,
      largeMobile: 300.w,
      desktop: 200.w,
    );
    return Padding(
      padding: EdgeInsets.only(top: 70.h, bottom: 50.h),
      child: Align(
        alignment: Alignment.center,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 50.h),
                    child: const AnimatedImageContainer(),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: responsiveConstraint),
                    child: Text(
                      style: TextStyle(color: Theme.of(context).primaryColor),
                      textAlign: TextAlign.center,
                      'Motivated Java Backend Developer with nearly a year of hands-on experience in designing and developing RESTful APIs using the Spring Framework. Proficient in crafting scalable, efficient, and secure backend solutions that power modern applications. Passionate about working with relational databases and optimizing queries for performance. Possessing strong problem-solving skills, I thrive in tackling complex challenges and transforming them into practical, high-quality solutions that align with business objectives. I have a solid understanding of software development best practices, including clean code principles, SOLID principles, testing, and agile methodologies. Additionally, I have experience implementing logging and monitoring solutions using tools like Grafana. With a keen interest in continuous learning, I stay updated with emerging technologies and trends in backend development. My ultimate goal is to contribute to innovative projects that make a tangible impact, while further developing my technical expertise and professional growth.',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
