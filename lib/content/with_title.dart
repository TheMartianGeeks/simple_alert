import 'package:flutter/material.dart';

AlertDialog withTitle(
  String title,
  String message,
  Function onCancel,
  String confirmTxt,
  BuildContext context,
  String cancelTxt,
  Function onSuccess,
) {
  return AlertDialog(
    title: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.lightGreen.withOpacity(0.1),
            borderRadius: BorderRadius.circular(50),
          ),
          alignment: Alignment.center,
          width: 40.0,
          height: 40.0,
          margin: EdgeInsets.only(right: 10),
          child: Image.asset(
            'packages/simple_alert/assets/icons/check-mark.png',
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            color: Colors.black,
          ),
        ),
      ],
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
      Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Visibility(
              visible: onCancel != null,
              child: FlatButton(
                child: Text(
                  cancelTxt ?? 'cancel',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                onPressed: () {
                  if (onCancel != null) {
                    onCancel();
                  }
                  Navigator.of(context).pop();
                },
              ),
            ),
            SizedBox(
              width: 14,
            ),
            RaisedButton(
              child: Text(
                confirmTxt ?? 'ok',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightGreen,
              padding: EdgeInsets.symmetric(
                horizontal: 18,
              ),
              elevation: 0,
              onPressed: () {
                if (onSuccess != null) {
                  onSuccess();
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      )
    ],
  );
}
