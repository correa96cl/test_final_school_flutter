import 'package:flutter/material.dart';
import 'package:test_final_school_flutter_mjv/components/space_component.dart';
import 'package:test_final_school_flutter_mjv/constantes/language_constants.dart';
import 'package:test_final_school_flutter_mjv/provider/issue_provider.dart';
import 'package:provider/provider.dart';

class ProfileIssue extends StatefulWidget {
  const ProfileIssue({super.key});

  @override
  State<ProfileIssue> createState() => _ProfileIssue();
}

class _ProfileIssue extends State<ProfileIssue> {
  late IssueProvider store;

  @override
  Widget build(BuildContext context) {
    store = Provider.of<IssueProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(translation(context).profile),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Card(
            margin: const EdgeInsets.all(0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(children: [
                const CircleAvatar(child: Text('MV')),
                const SpacerComponent(size: 16, isHorizontal: true),
                const Text('Marcelo Andres Valderrama Correa',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 8),
                const SpacerComponent(isFull: true),
                const Text(
                  'Minhas estatísticas',
                  style: TextStyle(fontSize: 18),
                )
              ]),
            ),
          ),
          const SpacerComponent(),
          const Text(
            'Minhas estatísticas',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 16),
          Row(children: [
            const Icon(Icons.list),
            const SizedBox(width: 8),
            const Text('Total de notas: '),
            Text(store.listaIssues.length.toString()),
          ]),
          const SpacerComponent(),
          Row(children: [
            const Icon(Icons.list),
            const SizedBox(width: 8),
            const Text('Concluídas: '),
            Text(store.listaIssues
                .where((element) => element.isConcluido == true)
                .length
                .toString()),
          ]),
          const SpacerComponent(),
          const SpacerComponent(isHorizontal: true, isFull: true),
          const SpacerComponent(),
          const Text(
            'Minhas estatísticas',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 16),
          Row(children: [
            const Text('Tema escuro'),
            const SpacerComponent(isHorizontal: true),
            /*Switch(
            value: storeConfig.tema == ThemeMode.dark,
            onChanged: (val) {
              storeConfig.tema = val ? ThemeMode.dark : ThemeMode.light;
            },
          )*/
          ])
        ]),
      ), /*Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: const EdgeInsets.all(0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(children: [
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: const CircleAvatar(
                        radius: 62,
                        child: Text(
                          'MV',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      )),
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                ]),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(children: [
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                  Text(
                    translation(context).employeerName + ' : ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('Marcelo Andres Valderrama Correa'),
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                ]),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(children: [
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                  Text(
                    translation(context).employeeMail + ' : ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('correa96cl@hotmail.com'),
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                ]),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(children: [
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                  Text(
                    translation(context).employeeDateBirth + ' : ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('25-06-1981'),
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                ]),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(children: [
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                  Text(
                    translation(context).employeeTelefone + ' : ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('(21) - 98000000'),
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                ]),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(children: [
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                  Text(
                    translation(context).employeeCustomer + ' : ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('Bradesco Seguros'),
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                ]),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(children: [
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                  Text(
                    translation(context).employeeFunction + ' : ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('Asesor em Tecnologia'),
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                ]),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(children: [
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                  Text(
                    translation(context).issueNumbers + ' : ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(store.listaIssues.length.toString()),
                  const SpacerComponent(
                    size: 8,
                    isHorizontal: true,
                  ),
                ]),
              ),
            )
          ],
        ),
      ),*/
    );
  }
}
