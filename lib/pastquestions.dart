import 'package:flutter/material.dart';

class Pastquestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( 
      title: 'Past Questions',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Past Questions'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sem('First Semester'),
              SizedBox(height: 8.0),
              sem('Second Semester'),
              SizedBox(height: 8.0),
              sem('Third Semester'),
              SizedBox(height: 8.0),
              sem('Fourth Semester'),
              SizedBox(height: 8.0),
              sem('Fifth Semester'),
              SizedBox(height: 8.0),
              sem('Sixth Semester'),
              SizedBox(height: 8.0),
              sem('Seventh Semester'),
              SizedBox(height: 8.0),
              sem('Eighth Semester'),
              SizedBox(height: 8.0),
              sem('Ninth Semester'),
              SizedBox(height: 8.0)
            ],
          ),
        )
      ) 
    );
  }
}
 
 class sem extends StatelessWidget{
   final String name;

   const sem(this.name);

   @override 
   widget build(BuildContext context){
     return DecoratedBox(
       decoration: BoxDecoration(color: Colors.amberAccent),
       child: Padding(
         padding: const EdgeInsets.all(8.0)
         child: Text(name),
       ),
       );
    }
 }
 