import 'package:flutter/material.dart';

import '../../../../../../Core/utils/images.dart';
import 'my_skills_container_view_body.dart';

class MySkillsContainerView extends StatelessWidget {
  const MySkillsContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MySkillsContainerViewBody(
          percentage: 0.7,
          title: 'Java',
          image: AppImages.java,
        ),
        MySkillsContainerViewBody(
          percentage: 0.5,
          title: 'Tomcat',
          image: AppImages.tomcat,
        ),
        MySkillsContainerViewBody(
          percentage: 0.6,
          title: 'Spring Boot',
          image: AppImages.springBoot,
        ),
        MySkillsContainerViewBody(
          percentage: 0.5,
          title: 'MySQL',
          image: AppImages.mysql,
        ),
        MySkillsContainerViewBody(
          percentage: 0.4,
          title: 'Redis',
          image: AppImages.redis,
        ),
        MySkillsContainerViewBody(
          percentage: 0.8,
          title: 'C++',
          image: AppImages.cpp,
        ),
      ],
    );
  }
}
