import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_final_school_flutter_mjv/entities/issue.dart';

class IssueService {

  final _key = 'KEY_ISSUE';

  Future<void> salvarIssue(List<IssueEntity> item) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String listJson = jsonEncode(item);
    await prefs.setString(_key, listJson);
  }

  Future<List<IssueEntity>> buscar() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? listJson = prefs.getString(_key);
    if (listJson != null){
      return IssueEntity.fromJsonList(jsonDecode(listJson));
    }

    return [];
  }
}
