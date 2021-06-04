import 'package:MYCSIT/teachers_students_detail/studentsdetail.dart';
import 'package:MYCSIT/teachers_students_detail/teachersdetail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactinfo extends StatefulWidget {
  @override
  _ContactinfoState createState() => _ContactinfoState();
}

class _ContactinfoState extends State<Contactinfo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Contact info",
            ),
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelStyle: TextStyle(fontSize: 13),
              labelPadding: EdgeInsets.only(bottom: 8),
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
                        "Teachers",
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
                        "Students",
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
              teacher(context),
              student(context),
            ],
          )),
    );
  }
}

Widget teacher(BuildContext context) {
  return ListView.builder(
    itemCount: teachersdetail.length,
    itemBuilder: (context, index) {
      teachersdetail
          .sort((a, b) => a["name"].compareTo(b["name"])); //for sorting
      return Card(
        margin: EdgeInsets.only(top: 7, bottom: 7),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              teachersdetail[index]["name"],
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.call),
            iconSize: 30,
            color: Colors.black,
            onPressed: () {
              launch(teachersdetail[index]["phoneno"]);
            },
          ),
          onLongPress: () {
            popUpContainer(context, index);
          },
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 2,
      );
    },
  );
}

Widget student(BuildContext context) {
  return ListView.builder(
      itemCount: studentdetails.length,
      itemBuilder: (context, index) {
        studentdetails
            .sort((a, b) => a["name"].compareTo(b["name"])); //for sorting
        return Card(
          margin: EdgeInsets.only(top: 7, bottom: 7),
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                studentdetails[index]["name"],
                style: TextStyle(fontSize: 20),
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.call),
              iconSize: 30,
              color: Colors.black,
              onPressed: () {
                launch(studentdetails[index]["phoneno"]);
              },
            ),
            onLongPress: () {
              popUpContainerstudent(context, index);
            },
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 2,
        );
      });
}

popUpContainer(BuildContext context, index) {
  double width = MediaQuery.of(context).size.width * 0.8;
  double height = MediaQuery.of(context).size.height * 0.55;
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: SingleChildScrollView(
            child: Material(
              child: Container(
                width: width,
                height: height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Image.asset("assets/images/elon.jpg"),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    SizedBox(height: 10),
                    Text(
                      teachersdetail[index]["name"],
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 5),
                    Text(
                      teachersdetail[index]["desp"],
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(teachersdetail[index]["address"]),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: FaIcon(
                            FontAwesomeIcons.envelope,
                            size: 30,
                          ),
                          onTap: () {},
                        ),
                        SizedBox(width: 20),
                        InkWell(
                          child: FaIcon(
                            FontAwesomeIcons.facebook,
                            size: 30,
                          ),
                          onTap: () {},
                        ),
                        SizedBox(width: 20),
                        InkWell(
                          child: FaIcon(
                            FontAwesomeIcons.instagram,
                            size: 30,
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        );
      });
}

popUpContainerstudent(BuildContext context, index) {
  double width = MediaQuery.of(context).size.width * 0.8;
  double height = MediaQuery.of(context).size.height * 0.55;
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: SingleChildScrollView(
            child: Material(
              child: Container(
                  width: width,
                  height: height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        child: Image.asset("assets/images/elon.jpg"),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      SizedBox(height: 10),
                      Text(
                        studentdetails[index]["name"],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone_android,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(studentdetails[index]["phoneno"]),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(studentdetails[index]["address"]),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: FaIcon(
                              FontAwesomeIcons.envelope,
                              size: 30,
                            ),
                            onTap: () {},
                          ),
                          SizedBox(width: 20),
                          InkWell(
                            child: FaIcon(
                              FontAwesomeIcons.facebook,
                              size: 30,
                            ),
                            onTap: () {},
                          ),
                          SizedBox(width: 20),
                          InkWell(
                            child: FaIcon(
                              FontAwesomeIcons.instagram,
                              size: 30,
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  )),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        );
      });
}
