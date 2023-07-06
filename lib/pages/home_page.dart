import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_final_school_flutter_mjv/components/body_component.dart';
import 'package:test_final_school_flutter_mjv/provider/issue_provider.dart';

import '../components/languagues_component.dart';

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

   void handleTab(int tabIdx) {
    setState(() {
      abaSeleccionada = tabIdx;
    });
  }

     @override
  Widget build(BuildContext context) {


    return  BodyComponent(
      child:  LanguaguesComponent(),
      //child: ListaIssues(),
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      actionButtom: FloatingActionButton(
        onPressed: () {
         store.abrirModalCadastro(context);
        },
        child: const Icon(Icons.add),
      ),
      
    );
  }
  }

