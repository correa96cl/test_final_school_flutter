

import 'package:flutter/material.dart';
import 'package:test_final_school_flutter_mjv/constantes/language_constants.dart';

class ProfileIssue extends StatefulWidget {
  const ProfileIssue({Key? key}) : super(key: key);

  @override
  _ProfileIssue createState() => _ProfileIssue();
}


class _ProfileIssue extends State<ProfileIssue>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translation(context).profile),
      ),
    );
  }

}