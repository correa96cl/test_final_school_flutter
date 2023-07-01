import 'package:flutter/material.dart';
import 'package:test_final_school_flutter_mjv/constantes/language_constants.dart';

class DetalheIssue extends StatefulWidget {
  const DetalheIssue({Key? key}) : super(key: key);

  @override
  _DetalheIssue createState() => _DetalheIssue();
}


class _DetalheIssue extends State<DetalheIssue>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translation(context).profile),
      ),
    );
  }

}
