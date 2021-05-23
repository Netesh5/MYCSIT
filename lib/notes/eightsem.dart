import 'package:flutter/material.dart';

class Eighthsem extends StatelessWidget {
  final List subjectItem;
  final int index;
  Eighthsem(this.subjectItem, this.index);
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
