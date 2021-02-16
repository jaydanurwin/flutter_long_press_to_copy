import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyableListTile extends StatelessWidget {
  final String copyableText;

  const CopyableListTile({Key key, this.copyableText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(copyableText),
      onLongPress: () {
        Clipboard.setData(
          ClipboardData(text: copyableText),
        );
        final snackBar = SnackBar(
          content: Text('Copied text!'),
        );

        // Find the Scaffold in the widget tree and use
        // it to show a SnackBar.
        Scaffold.of(context).showSnackBar(snackBar);
      },
    );
  }
}
