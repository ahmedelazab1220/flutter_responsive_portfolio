import 'package:flutter/material.dart';

import '../../data/models/certificate_model.dart';

class CertificationProvider extends ChangeNotifier {
  final List<bool> _hovers = List.generate(13, (index) => false);

  List<bool> get hovers => _hovers;

  void onHover(int index, bool value) {
    _hovers[index] = value;
    notifyListeners();
  }

  final List<CertificateModel> _certificateList = [
    CertificateModel(
      name: 'Getting started with Flutter Development',
      organization: 'Udemy',
      date: 'AUG 2024',
      skills: 'Flutter . Dart',
      credential:
          'https://drive.google.com/file/d/1hdkU2tKiPKF4aZEFfoLkxYC4w8QHMLJ5/view?usp=drive_link',
    ),
    CertificateModel(
      name: 'Flutter Development Advanced Course',
      organization: 'Udemy',
      date: 'AUG 2024',
      skills: 'Flutter . BLoc . MVVM . Cubit . APIs',
      credential:
          'https://drive.google.com/file/d/1GiMgs3ER17Sni9kScZ0SemhJIT47K9Ss/view?usp=drive_link',
    ),
    CertificateModel(
      name: 'Getting Started with Java Learning',
      organization: 'HackerRank',
      date: 'MAR 2024',
      skills: 'Java . Programming',
      credential:
          'https://drive.google.com/file/d/1-8DU--TqWjep7OLWF-yzOZjZws5AhR5G/view?usp=drive_link',
    ),
    CertificateModel(
      name: 'Getting Started with Spring Boot 3 & Hibernate For Begineers.',
      organization: 'Udemy',
      date: 'AUG 2024',
      skills: 'Spring Boot . Rest API\'s . Hibernate . JPA . Spring Security',
      credential:
          'https://drive.google.com/file/d/1nU9tLFKv3J2oUsND1FjzPS-LVvE_0cOJ/view?usp=drive_link',
    ),
    CertificateModel(
      name: 'Master SOLID Principles',
      organization: 'Udemy',
      date: 'DEC 2024',
      skills: 'SOLID Principles . Clean Code',
      credential:
          'https://drive.google.com/file/d/1XP0M8WpwHBAbzNef1bg0_mozF9K5iP_-/view?usp=drive_link',
    ),
    CertificateModel(
      name: 'SQL Fundamentals',
      organization: 'HackerRank',
      date: 'DEC 2024',
      skills: 'SQL . JOINING . FUNCTIONS',
      credential:
          'https://drive.google.com/file/d/1xtL8ZismfWWYsPJpmqKo9j2FS8v4q1VZ/view?usp=drive_link',
    ),
    CertificateModel(
      name: 'Getting Started with Docker',
      organization: 'Udemy',
      date: 'DEC 2024',
      skills: 'Linux Containers . Docker . Docker Compose',
      credential:
          'https://drive.google.com/file/d/1yzMrRDeKmbMo860KTl0MFe2F35iP_xkm/view?usp=drive_link',
    ),
    CertificateModel(
      name: 'Problem Solving (Basic)',
      organization: 'HackerRank',
      date: 'DEC 2024',
      skills: 'Problem Solving , Prefix Sum , Binary Search , Greedy',
      credential:
          'https://drive.google.com/file/d/1DYwx3hzZ52delxBvvWSSp8EDynYzbG5t/view?usp=drive_link',
    ),
  ];

  List<CertificateModel> get certificateList => _certificateList;
}
