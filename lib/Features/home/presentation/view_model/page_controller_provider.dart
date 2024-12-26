import 'package:flutter/material.dart';

class PageControllerProvider with ChangeNotifier {
  final PageController _controller = PageController();

  PageController get controller => _controller;
}
