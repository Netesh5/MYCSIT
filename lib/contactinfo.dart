import 'package:MYCSIT/teachersdetail.dart';
import 'package:flutter/material.dart';
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
              student(),
            ],
          )),
    );
  }
}

Widget teacher(BuildContext context) {
  return ListView.builder(
    itemCount: teachersdetail.length,
    itemBuilder: (context, index) {
      return Card(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              teachersdetail[index]["name"],
              style: TextStyle(fontSize: 20),
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
        ),
        shape: StadiumBorder(),
      );
    },
  );
}

Widget student() {
  return ListView(
    children: [
      Card(
          margin: EdgeInsets.only(top: 10, bottom: 20),
          child: ListTile(
            title: Text(
              "Mr.ram",
              style: TextStyle(fontSize: 22),
            ),
            trailing: Icon(
              Icons.call,
              size: 30,
              color: Colors.black,
            ),
          ),
          shape: StadiumBorder())
    ],
  );
}
