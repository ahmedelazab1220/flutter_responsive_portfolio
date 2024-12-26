import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Core/utils/text.dart';

import 'knowledge_body_container_view.dart';

class KnowledgeContainerView extends StatelessWidget {
  const KnowledgeContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Text(
            AppText.knowledge,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
        const KnowledgeBodyContainerView(
          knowledge: AppText.skillOne,
        ),
        const KnowledgeBodyContainerView(
          knowledge: AppText.skillTwo,
        ),
        const KnowledgeBodyContainerView(
          knowledge: AppText.skillThree,
        ),
        const KnowledgeBodyContainerView(
          knowledge: AppText.skillFour,
        ),
      ],
    );
  }
}
