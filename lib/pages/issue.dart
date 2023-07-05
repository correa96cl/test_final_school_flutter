import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_final_school_flutter_mjv/entities/issue_entity.dart';
import 'package:uuid/uuid.dart';

import '../constantes/language_constants.dart';

class IssueForm extends StatefulWidget {
  const IssueForm(BuildContext context, {Key? key}) : super(key: key);

  @override
  _IssueFormState createState() => _IssueFormState();
}



class _IssueFormState extends State<IssueForm>{
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descricaoController = TextEditingController();

   void handleSubmit() {
    print('Jolas');
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
print(item);

      /*if (valid) {
        widget.callback(item);
        Navigator.pop(context);
      }*/
    }
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
              labelText: translation(context).name,
              hintText: translation(context).nameHint,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
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
