import 'package:deprecianao/components/CardComponent.dart';
import 'package:flutter/material.dart';


class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
      child: ListView(
        children: <Widget>[
          card(),
        ],
      ),
    )  
    );
  }
}