import 'package:flutter/material.dart';

import '../../../../Core/utils/images.dart';
import '../../data/models/achievement_model.dart';

class AchievementsProvider with ChangeNotifier {
  final List<bool> _hovers = List.generate(4, (index) => false);

  List<bool> get hovers => _hovers;

  void onHover(int index, bool value) {
    _hovers[index] = value;
    notifyListeners();
  }

  final List<AchievementModel> _achievementsList = [
    const AchievementModel(
      title: 'Problem Setter, ECPC (Egyptian Collegiate Programming Contest)',
      subtitle:
          "2023 - 2024 | Designed complex algorithmic problems that challenged participants' coding skills, contributing to the competitive.",
      image: AppImages.linkedin,
      link:
          'https://www.linkedin.com/company/ecpc-egyptian-collegiate-programming-contest/',
      website: 'LinkedIn',
    ),
    const AchievementModel(
      title: 'Co-Coach, ECPC (Egyptian Collegiate Programming Contest).',
      subtitle:
          "2024 - 2025 | Mentored and trained teams to improve their problem-solving strategies and excel in national competitive programming contests.",
      image: AppImages.linkedin,
      link:
          'https://www.linkedin.com/company/ecpc-egyptian-collegiate-programming-contest/',
      website: 'LinkedIn',
    ),
    const AchievementModel(
      title:
          'Technical Instructor at Count Zero Bootcamp (CSTU - Tanta University).',
      subtitle:
          "2022 - 2023 | Taught algorithms, simplifying complex concepts to build students' problem-solving skills and practical understanding (e.g., Binary Search). ",
      image: AppImages.linkedin,
      link: 'https://www.linkedin.com/company/count-zero-cstu/',
      website: 'LinkedIn',
    ),
    const AchievementModel(
      title: r'Open Source Contributor at TheAlgorithms\Java (GitHub).',
      subtitle:
          "2024 - 2025 | Added and tested the Frustum of Cone algorithm, improving the library's functionality for computational geometry applications.",
      image: AppImages.github,
      link: 'https://github.com/TheAlgorithms/Java/pull/5479',
      website: 'GitHub',
    ),
  ];

  List<AchievementModel> get achievementsList => _achievementsList;
}
