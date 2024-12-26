import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../Core/utils/images.dart';
import '../../../../../Core/utils/text.dart';
import '../../../data/models/social_media_item_model.dart';
import 'social_media_item.dart';

class SocialMediaList extends StatefulWidget {
  const SocialMediaList({super.key});

  @override
  State<SocialMediaList> createState() => _SocialMediaListState();
}

class _SocialMediaListState extends State<SocialMediaList> {
  final List<SocialMediaItemModel> socialMediaItems = [
    SocialMediaItemModel(
      icon: AppImages.linkedin,
      onTap: () => launchUrl(
        Uri.parse(AppText.linkedinLink),
      ),
    ),
    SocialMediaItemModel(
      icon: AppImages.github,
      onTap: () => launchUrl(
        Uri.parse(AppText.githubLink),
      ),
    ),
    SocialMediaItemModel(
      icon: AppImages.behance,
      onTap: () => launchUrl(
        Uri.parse(AppText.behanceLink),
      ),
    ),
    SocialMediaItemModel(
      icon: AppImages.email,
      onTap: () => launchUrl(
        Uri.parse(AppText.emailLink),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RotatedBox(
                  quarterTurns: -3,
                  child: Text(
                    'Follow Me',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: 1.w,
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                Column(
                  children: [
                    SocialMediaItem(
                      icon: socialMediaItems[0].icon,
                      onTap: socialMediaItems[0].onTap,
                    ),
                    SocialMediaItem(
                      icon: socialMediaItems[1].icon,
                      onTap: socialMediaItems[1].onTap,
                    ),
                    SocialMediaItem(
                      icon: socialMediaItems[2].icon,
                      onTap: socialMediaItems[2].onTap,
                    ),
                    SocialMediaItem(
                      icon: socialMediaItems[3].icon,
                      onTap: socialMediaItems[3].onTap,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
