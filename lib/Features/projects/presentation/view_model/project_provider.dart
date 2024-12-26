import 'package:flutter/material.dart';
import '../../data/project_model.dart';

class ProjectProvider with ChangeNotifier {
  final List<bool> _hovers = List.generate(7, (index) => false);

  List<bool> get hovers => _hovers;

  void onHover(int index, bool value) {
    _hovers[index] = value;
    notifyListeners();
  }

  final List<ProjectModel> _projectList = [
    ProjectModel(
      name: 'MR Candy App',
      description:
          'Led backend development for the MR Candy App using Spring Boot and Java 21. Designed a scalable MySQL database with Spring Data JPA and Hibernate. Integrated Firebase for real-time notifications and scalability. Applied SOLID principles and DTO patterns for clean, maintainable code. Implemented security measures like SQL injection protection and role-based access.',
      link: 'https://github.com/ahmedelazab1220/MR-Candy-App',
    ),
    ProjectModel(
      name: 'Spring Boot AI',
      description:
          "Developed and implemented a Spring Boot application featuring RESTful endpoints for AI-powered chat interactions.utilizing the OpenAI API to deliver dynamic and interactive responses in real-time. Configured and managed the ChatClient to streamline communication with AI models, enhancing the application's interactivity and user engagement.",
      link: 'https://github.com/ahmedelazab1220/Spring-OpenAi-Integration',
    ),
    ProjectModel(
      name: 'Clothing Store Rest API',
      description:
          'Developed the backend system using Spring Boot for API creation. Using MySQL Database, with ORM tools like Hibernate and Spring Data JPA. Reduced boilerplate code with Lombok annotations for common methods. Secured the API endpoints using Spring Security with JWT.',
      link: 'https://github.com/ahmedelazab1220/ClothingStore-RestApI',
    ),
    ProjectModel(
      name: 'Fake Book API',
      description:
          'Developed a reactive Spring Boot REST API with WebFlux, enabling real-time streaming and non-blocking CRUD operations for book management. Integrated a reactive repository for efficient data handling, leveraging Server-Sent Events (SSE) for live updates. Enhanced application scalability and responsiveness through fully asynchronous processing and reactive programming.ent portal, intuitive class management, and a comprehensive GPA system, providing an all-encompassing solution for students.Using AR technology, CUI AIDER offers an immersive experience, allowing users to explore the complete university campus virtually. Through AR, students can visualize buildings, navigate with interactive directions, and gain a better understanding of their surroundings.',
      link: 'https://github.com/ahmedelazab1220/FakeBookApi',
    ),
    ProjectModel(
      name: 'Customer Relationship Management',
      description:
          'Developed the backend system using Spring Boot for API creation. Used MySQL with Hibernate and Spring Data JPA for database management. Simplified database interactions with Hibernate ORM. Enhanced development with Spring DevTools, including hot reloading.',
      link:
          'https://github.com/ahmedelazab1220/Customer-RelationShip-Management',
    ),
    ProjectModel(
      name: 'Sudoku Solver Game',
      description:
          'Created a Java-based Sudoku game and solver with an interactive GUI. Developed a backtracking algorithm for efficient puzzle solving. Applied OOP principles for modular and maintainable code. Improved user experience with error handling and input validation.',
      link: 'https://github.com/ahmedelazab1220/Java_Sudoku_Solver',
    ),
    ProjectModel(
      name: 'Spring MVC CRUD',
      description:
          'Designed the UI with JSP and JSTL for dynamic content rendering. Implemented C3P0 for efficient database connection pooling, ensuring reliability and scalability. Developed a CRM platform using Spring MVC, Hibernate, and MySQL, allowing users to manage customer records with ease. Used AOP for logging and transaction management.',
      link: 'https://github.com/ahmedelazab1220/SpringJSPAOP',
    ),
  ];

  List<ProjectModel> get projectList => _projectList;
}
