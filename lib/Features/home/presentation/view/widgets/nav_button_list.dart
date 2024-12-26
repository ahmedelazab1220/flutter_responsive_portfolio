import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../Core/utils/responsive.dart';
import '../../../../../Core/utils/text.dart';
import '../../view_model/page_controller_provider.dart';
import 'nav_button_item.dart';

class NavButtonList extends StatefulWidget {
  const NavButtonList({super.key});

  @override
  State<NavButtonList> createState() => _NavButtonListState();
}

class _NavButtonListState extends State<NavButtonList> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PageControllerProvider>(context);
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                NavButtonItem(
                  onTap: () {
                    provider.controller.animateToPage(
                      0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  text: AppText.home,
                ),
                if (!Responsive.isLargeMobile(context))
                  NavButtonItem(
                    onTap: () {
                      provider.controller.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeIn,
                      );
                    },
                    text: AppText.about,
                  ),
                NavButtonItem(
                  onTap: () {
                    provider.controller.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 1100),
                      curve: Curves.easeIn,
                    );
                  },
                  text: AppText.projects,
                ),
                NavButtonItem(
                  onTap: () {
                    provider.controller.animateToPage(
                      3,
                      duration: const Duration(milliseconds: 1100),
                      curve: Curves.easeIn,
                    );
                  },
                  text: AppText.certifications,
                ),
                NavButtonItem(
                  onTap: () {
                    provider.controller.animateToPage(
                      4,
                      duration: const Duration(milliseconds: 1100),
                      curve: Curves.easeIn,
                    );
                  },
                  text: AppText.achievements,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
