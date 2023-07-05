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
              ]),
            ),
          ),
          const SpacerComponent(),
          const SizedBox(height: 16),
          Row(children: [
            const Icon(Icons.format_list_bulleted_sharp),
            const SizedBox(width: 8),
            Text(
              translation(context).employeeFunction.toString() + ': ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(' Assesor de Tecnologia'),
          ]),
          const SpacerComponent(),
          Row(children: [
            const Icon(Icons.format_list_bulleted_sharp),
            const SizedBox(width: 8),
            Text(
              translation(context).employeeMail.toString() + ": ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text('marcelo.correa@mjv.com.br'),
          ]),
          const SpacerComponent(),
          Row(
            children: [
              const Icon(Icons.format_list_bulleted_sharp),
              const SizedBox(
                width: 8,
              ),
              Text(
                translation(context).employeeTelefone.toString() + ": ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text('(21) - 980038543')
            ],
          ),
          const SpacerComponent(),
           Row(
            children: [
              const Icon(Icons.format_list_bulleted_sharp),
              const SizedBox(
                width: 8,
              ),
              Text(
                translation(context).employeeDateBirth.toString() + ": ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text('25-06-1981')
            ],
          ),
          const SpacerComponent(),
          Row(
            children: [
              const Icon(Icons.format_list_bulleted_sharp),
              const SizedBox(
                width: 8,
              ),
              Text(
                translation(context).employeeCustomer.toString() + ": ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text('Bradesco Seguros')
            ],
          )
        ]),
      ),
    );
  }
}
