import 'package:flutter/material.dart';

void warningBadge(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Test Message"),
    content: Text("Message content is here"),
    actions: <Widget>[
      FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Got it"))
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
