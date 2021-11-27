import 'package:flutter/material.dart';

import 'themes.dart';

class Chips1 extends StatelessWidget {
  Chips1({Key? key, required this.chipname}) : super(key: key);
  final String chipname;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(chipname, style: FooderlichTheme.darkTextTheme.bodyText1),
      backgroundColor: Colors.black.withOpacity(0.7),
      onDeleted: () {
        print('delete');
      },
    );
  }
}
