import 'User.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool isRead;
  Message(
      {this.sender,
      this.time,
      this.text,
      this.isLiked = false,
      this.isRead = false});
}

User currentUser =
    User(id: 0, imageUrl: "assets/images/mina.jpg", name: "current user ");
User mina = User(id: 1, imageUrl: "assets/images/mina.jpg", name: "Mina");
User john = User(id: 2, imageUrl: "assets/images/john.jpg", name: "John");
User james = User(id: 3, imageUrl: "assets/images/james.jpg", name: "James");
User olivia = User(id: 4, imageUrl: "assets/images/olivia.jpg", name: "Olivia");
User sam = User(id: 5, imageUrl: "assets/images/sam.jpg", name: "Sam");
User sophia = User(id: 6, imageUrl: "assets/images/sophia.jpg", name: "Sophia");
User steven = User(id: 7, imageUrl: "assets/images/steven.jpg", name: "Steven");

final List<User> favorites = [sam, james, john, sophia, mina];

final List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRead: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRead: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRead: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRead: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRead: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRead: false,
  ),
  Message(
    sender: mina,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    isRead: false,
  ),
];

List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    isRead: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    isRead: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    isRead: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    isRead: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    isRead: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    isRead: true,
  ),
];
