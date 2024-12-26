import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/certifications_controller.dart';
import 'certifications_grid_view_body.dart';

class CertificationsGridView extends StatelessWidget {
  const CertificationsGridView({
    super.key,
    this.crossAxisCount = 3,
    this.ratio = 1.3,
  });
  final int crossAxisCount;
  final double ratio;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CertificationProvider>(context);
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: ratio,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return CertificationsGridViewBody(index: index);
        },
        childCount: provider.certificateList.length,
      ),
    );
  }
}
