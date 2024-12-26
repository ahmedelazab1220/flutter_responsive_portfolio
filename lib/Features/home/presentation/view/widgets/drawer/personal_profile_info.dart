import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Core/utils/text.dart';
import 'personal_profile_info_body.dart';

class PersonalProfileInfo extends StatelessWidget {
  const PersonalProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h, bottom: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PersonalProfileInfoBody(
            title: AppText.contact,
            content: AppText.contactId,
          ),
          const PersonalProfileInfoBody(
            title: AppText.email,
            content: AppText.emailId,
          ),
          const PersonalProfileInfoBody(
            title: AppText.linkedin,
            content: AppText.linkedinId,
          ),
          const PersonalProfileInfoBody(
            title: AppText.github,
            content: AppText.githubId,
          ),
          const Divider(),
          Text(
            AppText.skills,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}
