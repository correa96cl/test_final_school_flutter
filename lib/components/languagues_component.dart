import 'package:flutter/material.dart';
import 'package:test_final_school_flutter_mjv/components/hamburguer_component.dart';
import 'package:test_final_school_flutter_mjv/constantes/language_constants.dart';
import 'package:test_final_school_flutter_mjv/constantes/languages.dart';
import 'package:test_final_school_flutter_mjv/pages/issue.dart';

import '../main.dart';


class LanguaguesComponent extends StatefulWidget {
  const LanguaguesComponent({Key? key}) : super(key: key);

  @override
  _LanguaguesComponent createState() => _LanguaguesComponent();
}

class _LanguaguesComponent extends State<LanguaguesComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translation(context).description),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Language>(
              underline: const SizedBox(),
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
              onChanged: (Language? language) async {
                if (language != null) {
                  Locale _locale = await setLocale(language.languageCode);
                  MyApp.setLocale(context, _locale);
                }
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: const TextStyle(fontSize: 30),
                          ),
                          Text(e.name)
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: _drawerList(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        //child: IssueForm(context),
      ),
    );
  }

  Container _drawerList() {
    TextStyle _textStyle = const TextStyle(
      color: Colors.white,
      fontSize: 24,
    );
    return Container(
        color: Theme.of(context).primaryColor,
        child: const HamburguerComponent());
  }

}
