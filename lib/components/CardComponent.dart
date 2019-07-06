import 'package:flutter/material.dart';

Widget card() {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Image.asset(
              'images/016-hand.png',
            ),
            title: Text('Usuário fulano se auto depreciou'),
            subtitle: Text('Se auto depreciou falando: "Eu sou um bosta."'),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('Cutucar'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: Text('Afagar'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }