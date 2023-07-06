import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:test_final_school_flutter_mjv/components/item_widget.dart';
import 'package:test_final_school_flutter_mjv/entities/issue_entity.dart';
import 'package:test_final_school_flutter_mjv/provider/issue_provider.dart';
import 'package:test_final_school_flutter_mjv/router/custom_routes.dart';

class ListaIssues extends StatefulWidget {
  const ListaIssues({super.key});

  @override
  State createState() => _ListaIssues();
}

class _ListaIssues extends State<ListaIssues> {
  late IssueProvider store;




  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    store = Provider.of<IssueProvider>(context);

    return ListView.builder(
      itemCount: store.listaIssues.length,
      itemBuilder: (context, index) {
        final item = store.listaIssues.elementAt(index);
        return Dismissible(
            key: Key(item.uuid),
            onDismissed: (direction) {
             
            },
      child: ItemWidget(item: item, onPressed: (){}),); //Text(item.titulo));
      },
    );
  }
}
