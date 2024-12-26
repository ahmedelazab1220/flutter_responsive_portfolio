import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../Core/utils/responsive.dart';
import '../../../../../Core/utils/text.dart';
import '../../../../../Core/widgets/custom_title.dart';
import '../../view_model/certifications_controller.dart';
import 'certifications_grid_view.dart';

class CertificationsBody extends StatelessWidget {
  const CertificationsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(bottom: 20.h),
            sliver: SliverToBoxAdapter(
              child: CustomTitle(
                prefix: AppText.certificationsAndLicense.substring(0, 14),
                title: AppText.certificationsAndLicense.substring(15),
              ),
            ),
          ),
          ChangeNotifierProvider(
            create: (context) => CertificationProvider(),
            child: const Responsive(
              desktop: CertificationsGridView(crossAxisCount: 3),
              extraLargeScreen: CertificationsGridView(crossAxisCount: 4),
              largeMobile:
                  CertificationsGridView(crossAxisCount: 1, ratio: 1.8),
              mobile: CertificationsGridView(crossAxisCount: 1, ratio: 1.5),
              tablet: CertificationsGridView(crossAxisCount: 2, ratio: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
