import 'package:flutter/material.dart';

class Sixthsem extends StatelessWidget {
  final List subjectItem;
  final int index;
  Sixthsem(this.subjectItem, this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subjectItem[index]),
      ),
      body: Column(),
    );
  }
}
