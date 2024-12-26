import 'package:flutter/material.dart';
import 'custom_drawer_body.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Drawer(
        child: CustomDrawerBody(),
      ),
    );
  }
}
