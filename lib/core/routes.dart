import 'package:flutter/material.dart';
import 'package:practicle/features/dashboard/presentation/pages/dashboard_page.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => DashboardPage());
      case '/feedback':
        return MaterialPageRoute(builder: (_) => DashboardPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => DashboardPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Page Not Found')),
          ),
        );
    }
  }
}
