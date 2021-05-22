import 'package:MYCSIT/notes/eightsem.dart';
import 'package:MYCSIT/notes/fifthsem.dart';
import 'package:MYCSIT/notes/firstsem.dart';
import 'package:MYCSIT/notes/fourthsem.dart';
import 'package:MYCSIT/notes/secondsem.dart';
import 'package:MYCSIT/notes/seventhsem.dart';
import 'package:MYCSIT/notes/sixthsem.dart';
import 'package:MYCSIT/notes/thirdsem.dart';
import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List semitems = [
    "First sem",
    "Second Sem",
    "Third Sem",
    "Fourth Sem",
    "Fifth Sem",
    "Sixth Sem",
    "Seventh Sem",
    "Eight Sem"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: semitems.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Notes"),
          bottom: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelStyle: TextStyle(fontSize: 12),
            labelPadding: EdgeInsets.only(bottom: 10, right: 20),
            indicatorWeight: 3,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      semitems[0],
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      semitems[1],
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      semitems[2],
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      semitems[3],
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      semitems[4],
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      semitems[5],
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      semitems[6],
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      semitems[7],
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            firstsem(context),
            secondsem(context),
            thirdsem(context),
            fourthsem(context),
            fifthsem(context),
            sixthsem(context),
            seventhsem(context),
            eightsem(context),
          ],
        ),
      ),
    );
  }
}

Widget firstsem(BuildContext context) {
  List subjectItem = [
    "Physics",
    "C-programming",
    "Maths",
    "IIT",
    "Digital Logics"
  ];
  List colorlist = [
    0xFF158EBF,
    0xFFBF5A43,
    0xFF6E738F,
    0xFF01B4BB,
    0xFF52586F,
  ];
  return ListView.builder(
      itemCount: subjectItem.length,
      itemBuilder: (context, index) {
        return Container(
          height: 150,
          child: Card(
              child: ListTile(
                title: Center(
                    child: Text(
                  subjectItem[index],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Firstsem(subjectItem, index),
                      ));
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 20),
              elevation: 10,
              color: Color(colorlist[index]),
              shadowColor: Color(colorlist[index])),
        );
      });
}

Widget secondsem(BuildContext context) {
  List subjectItem = [
    "Discrete Structure",
    "Object Oriented Programming",
    "Microprocessor",
    "Mathematics II",
    "Statistics I"
  ];
  List colorlist = [
    0xFF158EBF,
    0xFFBF5A43,
    0xFF6E738F,
    0xFF01B4BB,
    0xFF52586F,
  ];
  return ListView.builder(
      itemCount: subjectItem.length,
      itemBuilder: (context, index) {
        return Container(
          height: 150,
          child: Card(
              child: ListTile(
                title: Center(
                    child: Text(
                  subjectItem[index],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Secondsem(subjectItem, index)));
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 20),
              elevation: 10,
              color: Color(colorlist[index]),
              shadowColor: Color(colorlist[index])),
        );
      });
}

Widget thirdsem(BuildContext context) {
  List subjectItem = [
    "Data Structure and Algorithms",
    "Numerical Methods",
    "Computer Architeture",
    "Computer Graphics",
    "Statistics II"
  ];
  List colorlist = [
    0xFF158EBF,
    0xFFBF5A43,
    0xFF6E738F,
    0xFF01B4BB,
    0xFF52586F,
  ];
  return ListView.builder(
      itemCount: subjectItem.length,
      itemBuilder: (context, index) {
        return Container(
          height: 150,
          child: Card(
              child: ListTile(
                title: Center(
                    child: Text(
                  subjectItem[index],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Thirdsem(subjectItem, index)));
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 20),
              elevation: 10,
              color: Color(colorlist[index]),
              shadowColor: Color(colorlist[index])),
        );
      });
}

Widget fourthsem(BuildContext context) {
  List subjectItem = [
    "Theory of Computation",
    "Computer Networks",
    "Operating System",
    "Database Management System",
    "Artifical Intelligence"
  ];
  List colorlist = [
    0xFF158EBF,
    0xFFBF5A43,
    0xFF6E738F,
    0xFF01B4BB,
    0xFF52586F,
  ];
  return ListView.builder(
      itemCount: subjectItem.length,
      itemBuilder: (context, index) {
        return Container(
          height: 150,
          child: Card(
              child: ListTile(
                title: Center(
                    child: Text(
                  subjectItem[index],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Fourthsem(subjectItem, index)));
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 20),
              elevation: 10,
              color: Color(colorlist[index]),
              shadowColor: Color(colorlist[index])),
        );
      });
}

Widget fifthsem(BuildContext context) {
  List subjectItem = [
    "Design and Analysis of Algorithms",
    "System Analsysis and Design",
    "Cryptography",
    "Simulation and Modeling",
    "Web Technology"
  ];
  List colorlist = [
    0xFF158EBF,
    0xFFBF5A43,
    0xFF6E738F,
    0xFF01B4BB,
    0xFF52586F,
  ];
  return ListView.builder(
      itemCount: subjectItem.length,
      itemBuilder: (context, index) {
        return Container(
          height: 150,
          child: Card(
              child: ListTile(
                title: Center(
                    child: Text(
                  subjectItem[index],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Fifthsem(subjectItem, index)));
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 20),
              elevation: 10,
              color: Color(colorlist[index]),
              shadowColor: Color(colorlist[index])),
        );
      });
}

Widget sixthsem(BuildContext context) {
  List subjectItem = [
    "Software Engineering",
    "Compiler Desgin and Construction",
    "E-governace",
    "NET Centric Computing",
    "Technical Writing"
  ];
  List colorlist = [
    0xFF158EBF,
    0xFFBF5A43,
    0xFF6E738F,
    0xFF01B4BB,
    0xFF52586F,
  ];
  return ListView.builder(
      itemCount: subjectItem.length,
      itemBuilder: (context, index) {
        return Container(
          height: 150,
          child: Card(
              child: ListTile(
                title: Center(
                    child: Text(
                  subjectItem[index],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sixthsem(subjectItem, index)));
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 20),
              elevation: 10,
              color: Color(colorlist[index]),
              shadowColor: Color(colorlist[index])),
        );
      });
}

Widget seventhsem(BuildContext context) {
  List subjectItem = [
    "Advance Java Programming",
    "Data Warehouse and Data Mining",
    "Principles of Management",
  ];
  List colorlist = [
    0xFF158EBF,
    0xFFBF5A43,
    0xFF6E738F,
  ];
  return ListView.builder(
      itemCount: subjectItem.length,
      itemBuilder: (context, index) {
        return Container(
          height: 150,
          child: Card(
              child: ListTile(
                title: Center(
                    child: Text(
                  subjectItem[index],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Seventhsem(subjectItem, index)));
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 20),
              elevation: 10,
              color: Color(colorlist[index]),
              shadowColor: Color(colorlist[index])),
        );
      });
}

Widget eightsem(BuildContext context) {
  List subjectItem = [
    "Advance Database",
  ];
  List colorlist = [
    0xFF158EBF,
  ];
  return ListView.builder(
      itemCount: subjectItem.length,
      itemBuilder: (context, index) {
        return Container(
          height: 150,
          child: Card(
              child: ListTile(
                title: Center(
                    child: Text(
                  subjectItem[index],
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Eighthsem(subjectItem, index)));
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 20),
              elevation: 10,
              color: Color(colorlist[index]),
              shadowColor: Color(colorlist[index])),
        );
      });
}
