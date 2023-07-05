import 'package:flutter/material.dart';
import 'package:test_final_school_flutter_mjv/components/languagues_component.dart';

import 'package:test_final_school_flutter_mjv/provider/issue_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  late IssueProvider store;

  void _showSuccessDialog() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }

  @override
  Widget build(BuildContext context) {
    return LanguaguesComponent();
  }


  
}
