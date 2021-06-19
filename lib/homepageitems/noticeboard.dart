import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Noticeboard extends StatefulWidget {
  @override
  _NoticeboardState createState() => _NoticeboardState();
}

class _NoticeboardState extends State<Noticeboard> {
  CollectionReference _store = FirebaseFirestore.instance.collection('Notice');
  bool _isLoading = false;
  Map fetchedData;
  addData() async {
    setState(() {
      _isLoading = true;
    });
    Map<String, dynamic> data = {
      "name": "nitesh paudel",
      "address": "Tilottama-7,Nepal",
      "phone no": 9867838664
    };
    _store.add(data);
    setState(() {});
  }

  fetchData() {
    _store.snapshots().listen((snapshot) {
      setState(() {
        fetchedData = snapshot.docs[0].data();
      });
    });
  }

  deleteData() async {
    QuerySnapshot querySnapshot = await _store.get();
    querySnapshot.docs[0].reference.delete();
  }

  updateData() async {
    QuerySnapshot querySnapshot = await _store.get();
    querySnapshot.docs[0].reference
        .update({"name": "Netesh Paudel", "address": "Koteshower-32,Nepal"});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notice Board"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 50,
          ),
          Card(
            color: Colors.deepPurpleAccent,
            child: TextButton(
              onPressed: () => addData(),
              child: Text(
                "Add Data",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.deepPurpleAccent,
            child: TextButton(
              onPressed: () => deleteData(),
              child: Text(
                "Delete Data",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.deepPurpleAccent,
            child: TextButton(
              onPressed: () => fetchData(),
              child: Text(
                "Fetch Data",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.deepPurpleAccent,
            child: TextButton(
              onPressed: () => updateData(),
              child: Text(
                "Update Data",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            color: Colors.deepPurpleAccent,
            child: Center(
              child: Text(
                fetchedData.toString(),
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
