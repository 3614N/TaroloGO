class Message {
  int id;
  int senderId;
  int recieverId;
  String text;
  String time;
  bool isChecked;

  Message({
    required this.id,
    required this.senderId,
    required this.recieverId,
    required this.text,
    required this.time,
    required this.isChecked,
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
