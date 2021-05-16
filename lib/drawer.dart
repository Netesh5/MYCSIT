import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  final image =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVTFpsgcrxvZ2t6P4PCWdVpiQlp_HxMunNzw&usqp=CAU";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Elon Musk"),
              accountEmail: Text("elon.musk@dogecoin.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(image),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
