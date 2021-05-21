/* import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("Notes"),
      ),
      body: semItems(context),
    );
  }
}

Widget semItems(BuildContext context) {
  List semitems = [
    "First semester",
    "Second Semester",
    "Third Semester",
    "Fourth Semester",
    "Fifth Semester",
    "Sixth Semester",
    "Seventh Semester",
    "Eight Semester"
  ];
  return GridView.builder(
      padding: EdgeInsets.all(20),
      itemCount: 8,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return Card(
          child: InkWell(
            child: GridTile(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    semitems[index],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            onTap: () {},
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 3,
        );
      });
}
 */
