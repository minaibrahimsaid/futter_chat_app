import 'package:flutter/material.dart';
import 'package:chat/widgets/CategorySelector.dart';
import 'package:chat/widgets/FavoriteSelector.dart';
import 'package:chat/widgets/RecentChat.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          )
        ],
        centerTitle: true,
        elevation: 0.0,
        title: Text("Chat",
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: <Widget>[FavoriteSelector(), RecentChat()],
            ),
          ))
        ],
      ),
    );
  }
}
