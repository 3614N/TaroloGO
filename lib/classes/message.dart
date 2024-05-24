class Message {
  int id;
  int senderId;
  int recieverId;
  String text;
  String time;

  Message({
    required this.id,
    required this.senderId,
    required this.recieverId,
    required this.text,
    required this.time,
  });
}

class Chat {
  List<Message> sentMessages;
  List<Message> receivedMessages;

  Chat({
    required this.receivedMessages,
    required this.sentMessages,
  });
}
