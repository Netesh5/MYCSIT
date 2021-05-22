import 'package:flutter/material.dart';

class Fourthsem extends StatelessWidget {
  final List subjectItem;
  final int index;
  Fourthsem(this.subjectItem, this.index);
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
