import 'package:flutter/material.dart';

class Secondsem extends StatelessWidget {
  final List subjectItem;
  final int index;
  Secondsem(this.subjectItem, this.index);
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
