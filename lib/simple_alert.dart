library simple_alert;

import 'package:flutter/material.dart';

/// A Simple Alert box.
class SimpleAlert {
  static Future success(
    BuildContext context, {
    String title,
    @required String message,
    String cancelTxt,
    String confirmTxt,
    Function onSuccess,
    Function onCancel,
  }) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return title != null
            ? hasTitle(
                title,
                message,
                onCancel,
                confirmTxt,
                context,
                cancelTxt,
                onSuccess,
              )
            : emptyTitle(
                message,
                onCancel,
                confirmTxt,
                context,
                cancelTxt,
                onSuccess,
              );
      },
    );
  }

  static AlertDialog hasTitle(
    String title,
    String message,
    Function onCancel,
    String confirmTxt,
    BuildContext context,
    String cancelTxt,
    Function onSuccess,
  ) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        Visibility(
          visible: onCancel != null,
          child: FlatButton(
            child: Text(cancelTxt ?? 'cancel'),
            onPressed: () {
              if (onCancel != null) {
                onCancel();
              }
              Navigator.of(context).pop();
            },
          ),
        ),
        FlatButton(
          child: Text(confirmTxt ?? 'ok'),
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

  static AlertDialog emptyTitle(
    String message,
    Function onCancel,
    String confirmTxt,
    BuildContext context,
    String cancelTxt,
    Function onSuccess,
  ) {
    return AlertDialog(
      title: Text('Success'),
      content: Text(message),
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

  //static Future danger() {}

  //static Future infos() {}

  //static Future warning() {}

  //static Future message() {}
}
