import 'package:flutter/material.dart';
import 'package:flutter_long_press_to_copy/widgets/copyable_list_tile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Long Press to Copy'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CopyableListTile(
                copyableText: '867-5309',
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Test'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
