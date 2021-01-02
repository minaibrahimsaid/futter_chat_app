import 'package:chat/screens/Chat.dart';
import 'package:flutter/material.dart';
import 'package:chat/models/Message.dart';

class FavoriteSelector extends StatelessWidget {
  const FavoriteSelector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Favorite contacts",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                    icon: Icon(Icons.more_horiz_sharp),
                    iconSize: 25,
                    color: Colors.blueGrey,
                    onPressed: () {})
              ],
            ),
          ),
          Container(
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Chat(
                                  user: favorites[index],
                                ))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage:
                                AssetImage(favorites[index].imageUrl),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            favorites[index].name,
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 14.0,
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            height: 120,
          )
        ],
      ),
    );
  }
}
