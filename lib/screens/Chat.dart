import 'package:chat/models/Message.dart';
import 'package:flutter/material.dart';
import 'package:chat/models/User.dart';

class Chat extends StatefulWidget {
  final User user;
  Chat({this.user});
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  var _controller = TextEditingController();
  var allMessages = messages;
  var currentMessage;
  Widget _buildMessage(Message message, bool isMe) {
    final Widget messageContainer = Container(
      width: MediaQuery.of(context).size.width * .75,
      decoration: BoxDecoration(
          color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
          borderRadius: isMe
              ? BorderRadius.only(
                  topLeft: Radius.circular(15), bottomLeft: Radius.circular(15))
              : BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.time,
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Text(message.text,
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ],
      ),
      margin: isMe
          ? EdgeInsets.only(top: 8, bottom: 8, left: 50)
          : EdgeInsets.only(top: 8, bottom: 8),
    );
    if (isMe) {
      return messageContainer;
    }
    return Row(
      children: [
        messageContainer,
        IconButton(
            icon: message.isLiked
                ? Icon(
                    Icons.favorite,
                    color: Theme.of(context).primaryColor,
                  )
                : Icon(
                    Icons.favorite_border,
                    color: Colors.blueGrey,
                  ),
            onPressed: () {})
      ],
    );
  }

  Widget _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
              icon: Icon(Icons.photo),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
              onPressed: () {}),
          Expanded(
              child: TextField(
            controller: _controller,
            onChanged: (value) {
              setState(() {
                currentMessage = value;
              });
            },
            textCapitalization: TextCapitalization.sentences,
            autocorrect: true,
            decoration:
                InputDecoration.collapsed(hintText: "Send a message ..."),
          )),
          IconButton(
              icon: Icon(Icons.send),
              iconSize: 25,
              color: Theme.of(context).primaryColor,
              onPressed: () {
                final newMessage = Message(
                    sender: currentUser, text: currentMessage, time: "3:50 PM");
                allMessages.insert(0, newMessage);
                FocusScope.of(context).unfocus();
                _controller.clear();
              })
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: Text(widget.user.name,
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
          actions: [
            IconButton(
              icon: Icon(Icons.more_horiz),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                    child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.only(top: 15),
                      itemBuilder: (BuildContext context, int index) {
                        final message = allMessages[index];
                        bool isMe = message.sender.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      },
                      itemCount: allMessages.length,
                    ),
                  ),
                ),
              ),
              _buildMessageComposer()
            ],
          ),
        ),
      ),
    );
  }
}
