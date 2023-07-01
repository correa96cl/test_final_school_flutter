import 'package:flutter/material.dart';
import 'package:test_final_school_flutter_mjv/pages/detalhe_issue.dart';
import 'package:test_final_school_flutter_mjv/pages/home_page.dart';
import 'package:test_final_school_flutter_mjv/pages/not_found_page.dart';
import 'package:test_final_school_flutter_mjv/pages/profile_issue.dart';
import 'package:test_final_school_flutter_mjv/router/route_constantes.dart';




class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case detalheRoute:
        return MaterialPageRoute(builder: (_) => const DetalheIssue());
      case profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfileIssue());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}
