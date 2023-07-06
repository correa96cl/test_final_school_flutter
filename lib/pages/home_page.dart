import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_final_school_flutter_mjv/components/body_component.dart';
import 'package:test_final_school_flutter_mjv/components/languagues_component.dart';
import 'package:test_final_school_flutter_mjv/provider/issue_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

   @override
  _HomePageState createState() => _HomePageState();
  
}

  class _HomePageState extends State<HomePage> {

  late IssueProvider store;
  late int abaSeleccionada;

  @override
  void initState() {
    store = Provider.of<IssueProvider>(context, listen: false);
    super.initState();
  }

     @override
  Widget build(BuildContext context) {
    return  BodyComponent(
      child: LanguaguesComponent(),
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      /*bar: BottomNavigationBar(
        //items: abas,
        currentIndex: abaSeleccionada,
        //onTap: handleTab,
      ),*/
      actionButtom: FloatingActionButton(
        onPressed: () {
         store.abrirModalCadastro(context);
        },
        child: const Icon(Icons.add),
      ),
      //child: conteudos.elementAt(abaSeleccionada),
    );
  }
  }

