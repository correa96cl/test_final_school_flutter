import 'package:flutter/material.dart';
import 'package:test_final_school_flutter_mjv/entities/issue_entity.dart';
import 'package:test_final_school_flutter_mjv/pages/issue.dart';
import 'package:test_final_school_flutter_mjv/service/issue_service.dart';

class IssueProvider with ChangeNotifier{
  final service = IssueService();
  List<IssueEntity> _listaIssues = [];
  IssueEntity? _seleccionado;
  int? idx;

  IssueProvider(){
    buscarIssues();
  }

  buscarIssues() async {
    listaIssues = await service.buscar();
  }

  List<IssueEntity> get listaIssues => _listaIssues;

  set listaIssues(List<IssueEntity> val){
    _listaIssues = val;
    service.salvarIssue(_listaIssues);
    notifyListeners();
  }

  void abrirModalCadastro(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          contentPadding: const EdgeInsets.all(16),
          children: [
           IssueForm(context, callback: (item){
            listaIssues = [item, ...listaIssues];
           } ),
          ],
        );
      },
    );
  }
}