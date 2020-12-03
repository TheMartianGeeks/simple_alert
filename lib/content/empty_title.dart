import 'package:flutter/material.dart';

AlertDialog emptyTitle(
  String message,
  Function onCancel,
  String confirmTxt,
  BuildContext context,
  String cancelTxt,
  Function onSuccess,
) {
  return AlertDialog(
    title: Text(
      'Success',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
        color: Colors.black,
      ),
    ),
    content: Text(
      message,
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.5,
        height: 1.35,
        color: Colors.grey[600],
      ),
    ),
    actions: <Widget>[
      Visibility(
        visible: onCancel != null,
        child: FlatButton(
          child: Text(confirmTxt ?? 'cancel'),
          onPressed: () {
            if (onCancel != null) {
              onCancel();
            }
            Navigator.of(context).pop();
          },
        ),
      ),
      FlatButton(
        child: Text(cancelTxt ?? 'ok'),
        onPressed: () {
          if (onSuccess != null) {
            onSuccess();
          }
          Navigator.of(context).pop();
        },
      ),
    ],
  );
}
