import 'package:flutter/material.dart';

class SocialMediaItemModel {
  final String icon;
  final VoidCallback? onTap;

  SocialMediaItemModel({
    required this.icon,
    this.onTap,
  });
}
