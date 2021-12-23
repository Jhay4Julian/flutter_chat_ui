import 'package:chat_app/models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Not String but DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User bimbo = User(
  id: 1,
  name: 'Bimbo',
  imageUrl: 'assets/images/Bimbo.jpg',
);
final User eve = User(
  id: 2,
  name: 'Eve',
  imageUrl: 'assets/images/Eve.jpg',
);
final User jane = User(
  id: 3,
  name: 'Jane',
  imageUrl: 'assets/images/Jane.jpg',
);
final User klaus = User(
  id: 4,
  name: 'Klaus',
  imageUrl: 'assets/images/Klaus.jpg',
);
final User love = User(
  id: 5,
  name: 'Love',
  imageUrl: 'assets/images/Love.jpg',
);
final User sandy = User(
  id: 6,
  name: 'Sandy',
  imageUrl: 'assets/images/Sandy.jpg',
);
final User ted = User(
  id: 7,
  name: 'Ted',
  imageUrl: 'assets/images/Ted.jpg',
);
final User xahavi = User(
  id: 8,
  name: 'Xahavi',
  imageUrl: 'assets/images/Xahavi.jpg',
);


// FAVORITE CONTACTS
List<User> favorites = [xahavi, klaus, love, bimbo, eve];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: xahavi,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: jane,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: eve,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: bimbo,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: klaus,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: love,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sandy,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: ted,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: xahavi,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: xahavi,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: xahavi,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: xahavi,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];