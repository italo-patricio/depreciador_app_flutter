import 'package:flutter/material.dart';


class RuleFragment extends StatelessWidget {
  final String regras = "Regras ? \n- O depreciado pode negar a depreciação caso só uma pessoa endosse a ação.";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start ,
      children: <Widget>[
        Padding(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Text("$regras", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),      
      ]
    );
  }
}