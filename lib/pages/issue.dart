import 'package:flutter/material.dart';
import 'package:test_final_school_flutter_mjv/components/space_component.dart';
import 'package:test_final_school_flutter_mjv/entities/issue_entity.dart';
import 'package:uuid/uuid.dart';

import '../constantes/language_constants.dart';

class IssueForm extends StatefulWidget {
    final void Function(IssueEntity item) callback;

  const IssueForm(BuildContext context, {Key? key, required this.callback}) : super(key: key);

  @override
  State<IssueForm> createState() => _IssueFormState();
}

enum TipoCliente {
  seleccione,
  bradescoSeguros,
  sulamerica,
  cocaCola,
  alelo,
}

enum TipoEscritorio { seleccione, rj, pr, sp, alph, col, pt, ita, usa, fra }

class _IssueFormState extends State<IssueForm> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descricaoController = TextEditingController();

  TipoCliente dropdownValue = TipoCliente.seleccione;
  TipoEscritorio dropdownEscritorioValue = TipoEscritorio.seleccione;

  void handleSubmit() {
    final isValido = _key.currentState!.validate();
    if (isValido) {
      final item = IssueEntity(
        uuid: const Uuid().v4(),
        nome: _titleController.text,
        descricao: _descricaoController.text,
        dataCriacao: DateTime.now(),
        nomeCliente: _descricaoController.text,
      );
      print('Hola');
      


        widget.callback(item);
        Navigator.pop(context);
      
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: Center(
              child: Text(
                translation(context).issueInformation,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            children: [
              const SpacerComponent(
                isFull: true,
              ),
              DropdownButton(
                value: dropdownValue,
                items: [
                  DropdownMenuItem(
                      value: TipoCliente.seleccione,
                      child:
                          Text(translation(context).selectCustomer.toString())),
                  DropdownMenuItem(
                      value: TipoCliente.alelo, child: Text('Alelo')),
                  DropdownMenuItem(
                      value: TipoCliente.bradescoSeguros,
                      child: Text('Bradesco Seguros')),
                  DropdownMenuItem(
                      value: TipoCliente.sulamerica, child: Text('Sulamerica')),
                  DropdownMenuItem(
                      value: TipoCliente.cocaCola, child: Text('Coca Cola'))
                ],
                onChanged: (value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
              const SpacerComponent(
                isFull: true,
              ),
              DropdownButton(
                  value: dropdownEscritorioValue,
                  items: [
                    DropdownMenuItem(
                        value: TipoEscritorio.seleccione,
                        child:
                            Text(translation(context).selectOffice.toString())),
                    DropdownMenuItem(
                        value: TipoEscritorio.alph, child: Text('Alphaville')),
                    DropdownMenuItem(
                        value: TipoEscritorio.rj,
                        child: Text('Rio de Janeiro')),
                    DropdownMenuItem(
                        value: TipoEscritorio.pr, child: Text('Curitiba')),
                    DropdownMenuItem(
                        value: TipoEscritorio.sp, child: Text('São Paulo'))
                  ],
                  onChanged: (value) {
                    setState(() {
                      dropdownEscritorioValue = value!;
                    });
                  })
            ],
          ),
          TextFormField(
            maxLines: 4,
            controller: _descricaoController,
            validator: (val) {
              if (val != null && val.isEmpty) {
                return translation(context).requiredField;
              }
              return null;
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: translation(context).descriptionIssue,
              hintText: translation(context).descriptionHint,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _titleController,
            validator: (val) {
              if (val != null && val.isEmpty) {
                return translation(context).requiredField;
              }
              return null;
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: translation(context).email,
              hintText: translation(context).emailHint,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
             
              if (_key.currentState != null && _key.currentState!.validate()) {
                handleSubmit;
              }
              //print(_descricaoController.text);
            },
            height: 50,
            shape: const StadiumBorder(),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Text(
                translation(context).submitInfo,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
