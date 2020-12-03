library simple_alert;

import 'package:flutter/material.dart';

import 'content/empty_title.dart';
import 'content/with_title.dart';

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
            ? withTitle(title, message, onCancel, confirmTxt, context,
                cancelTxt, onSuccess)
            : emptyTitle(
                message, onCancel, confirmTxt, context, cancelTxt, onSuccess);
      },
    );
  }

  static Future danger(
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
            ? withTitle(title, message, onCancel, confirmTxt, context,
                cancelTxt, onSuccess)
            : emptyTitle(
                message, onCancel, confirmTxt, context, cancelTxt, onSuccess);
      },
    );
  }

  static Future info(
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
            ? withTitle(title, message, onCancel, confirmTxt, context,
                cancelTxt, onSuccess)
            : emptyTitle(
                message, onCancel, confirmTxt, context, cancelTxt, onSuccess);
      },
    );
  }

  static Future warning(
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
            ? withTitle(title, message, onCancel, confirmTxt, context,
                cancelTxt, onSuccess)
            : emptyTitle(
                message, onCancel, confirmTxt, context, cancelTxt, onSuccess);
      },
    );
  }

  //static Future message() {}
}
