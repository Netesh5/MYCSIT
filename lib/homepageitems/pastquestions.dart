import 'package:flutter/material.dart';

class Pastquestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Hero(
            tag: "pastQuestions",
            child: Text(
              'Past Questions',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sem('First Semester'),
                SizedBox(height: 8.0),
                Sem('Second Semester'),
                SizedBox(height: 8.0),
                Sem('Third Semester'),
                SizedBox(height: 8.0),
                Sem('Fourth Semester'),
                SizedBox(height: 8.0),
                Sem('Fifth Semester'),
                SizedBox(height: 8.0),
                Sem('Sixth Semester'),
                SizedBox(height: 8.0),
                Sem('Seventh Semester'),
                SizedBox(height: 8.0),
                Sem('Eighth Semester'),
                SizedBox(height: 8.0),
                Sem('Ninth Semester'),
                SizedBox(height: 8.0)
              ],
            ),
          ),
        ));
  }
}

class Sem extends StatelessWidget {
  final String name;

  Sem(this.name);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.amberAccent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
      ),
    );
  }
}
