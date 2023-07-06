import 'package:flutter/material.dart';

class BodyComponent extends StatelessWidget {

final Widget child;
final EdgeInsets? padding;
final EdgeInsets? margin;
final BottomNavigationBar? bar;
final FloatingActionButton? actionButtom;

const BodyComponent({super.key, 
required this.child, 
this.padding, 
this.margin,
this.bar,
this.actionButtom});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: const AppBarComponent(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.topCenter,
        margin: margin ?? const EdgeInsets.only(top: 8),
        padding: padding ?? const EdgeInsets.all(18),
        constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.width),
        child: child,
      ),
      bottomNavigationBar: bar,
      floatingActionButton: actionButtom,
    );
  }
}
