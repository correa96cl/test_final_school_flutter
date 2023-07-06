import 'package:flutter/material.dart';
import 'package:test_final_school_flutter_mjv/constantes/language_constants.dart';
import 'package:test_final_school_flutter_mjv/router/route_constantes.dart';

class HamburguerComponent extends StatefulWidget {


    const HamburguerComponent({Key? key}) : super(key: key);

    @override
  _HamburguerComponent createState() => _HamburguerComponent();
  
}
  class _HamburguerComponent extends State<HamburguerComponent>{

  @override
  Widget build(BuildContext context) {
   return ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              height: 100,
              child: const CircleAvatar(),
            ),
          ),
       
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              translation(context).profile,
              style:   TextStyle(
      color: Colors.white,
      fontSize: 24,
    ),
            ),
            onTap: () {
              // To close the Drawer
              Navigator.pop(context);
              // Navigating to About Page
              Navigator.pushNamed(context, profileRoute);
              
            },
          ),
        ],
      );
  }

  }


