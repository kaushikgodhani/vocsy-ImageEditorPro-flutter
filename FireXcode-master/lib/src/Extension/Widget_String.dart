import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension StringWidget on Widget {
  Widget copyWidget(context) {
    // final snackBar = SnackBar(
    //   content: Text('Copied to Clipboard'),
    //   action: SnackBarAction(label: 'Undo', onPressed: () {}),
    // );
    return InkWell(
      onTap: () {
        Clipboard.setData(ClipboardData(text: toString()));
      },
      child: this,
    );
  }
}
