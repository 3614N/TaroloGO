import 'package:tarologo/classes/message.dart';

Chat firstChat = Chat(receivedMessages: [
  Message(
    id: 1,
    senderId: 1,
    recieverId: 3,
    text: "Здравствуйте! Чем могу помочь вам сегодня?",
    time: "2024-05-24T10:00:00",
    isChecked: true,
  ),
  Message(
    id: 3,
    senderId: 1,
    recieverId: 3,
    text:
        "Хорошо, я подготовлю расклад. Пожалуйста, уточните, вас интересует работа, личная жизнь или что-то еще?",
    time: "2024-05-24T10:02:45",
    isChecked: true,
  ),
  Message(
    id: 5,
    senderId: 1,
    recieverId: 3,
    text:
        "Понятно, давайте посмотрим. Сейчас я сделаю расклад на три карты и расскажу вам, что вижу.",
    time: "2024-05-24T10:05:30",
    isChecked: true,
  ),
  Message(
    id: 6,
    senderId: 1,
    recieverId: 3,
    text:
        "Первая карта – 'Солнце'. Это очень позитивная карта, она символизирует радость, успех и гармонию в отношениях.",
    time: "2024-05-24T10:07:00",
    isChecked: true,
  ),
  Message(
    id: 7,
    senderId: 1,
    recieverId: 3,
    text:
        "Вторая карта – 'Луна'. Это карта эмоций и подсознания, она может указывать на скрытые страхи или неясности в ваших отношениях.",
    time: "2024-05-24T10:09:30",
    isChecked: true,
  ),
  Message(
    id: 8,
    senderId: 1,
    recieverId: 3,
    text:
        "Третья карта – 'Звезда'. Она символизирует надежду, вдохновение и долгосрочные перспективы. В сочетании с другими картами это значит, что у вас есть все шансы на светлое будущее вместе.",
    time: "2024-05-24T10:11:15",
    isChecked: true,
  ),
  Message(
    id: 10,
    senderId: 1,
    recieverId: 3,
    text:
        "Всегда рада помочь! Если у вас будут еще вопросы или захотите более детальный расклад, обращайтесь.",
    time: "2024-05-24T10:14:00",
    isChecked: true,
  ),
  Message(
    id: 11,
    senderId: 1,
    recieverId: 3,
    text: "Я бомбила Иран",
    time: "2024-05-25T10:14:00",
    isChecked: true,
  ),
], sentMessages: [
  Message(
    id: 2,
    senderId: 3,
    recieverId: 1,
    text: "Здравствуйте! Хотела бы узнать, что меня ждет в ближайшем будущем.",
    time: "2024-05-24T10:01:30",
    isChecked: true,
  ),
  Message(
    id: 4,
    senderId: 3,
    recieverId: 1,
    text:
        "Меня больше интересует личная жизнь, особенно отношения с моим партнером.",
    time: "2024-05-24T10:04:00",
    isChecked: true,
  ),
  Message(
    id: 9,
    senderId: 3,
    recieverId: 1,
    text: "Большое спасибо за расклад! Это очень обнадеживает.",
    time: "2024-05-24T10:12:45",
    isChecked: true,
  ),
]);

Chat secondChat = Chat(receivedMessages: [
  Message(
    id: 1,
    senderId: 2,
    recieverId: 3,
    text: "Здравствуйте! Чем могу помочь вам сегодня?",
    time: "2024-05-24T10:00:00",
    isChecked: true,
  ),
  Message(
    id: 3,
    senderId: 2,
    recieverId: 3,
    text:
        "Хорошо, я подготовлю расклад. Пожалуйста, уточните, вас интересует работа, личная жизнь или что-то еще?",
    time: "2024-05-24T10:02:45",
    isChecked: true,
  ),
  Message(
    id: 5,
    senderId: 2,
    recieverId: 3,
    text:
        "Понятно, давайте посмотрим. Сейчас я сделаю расклад на три карты и расскажу вам, что вижу.",
    time: "2024-05-24T10:05:30",
    isChecked: true,
  ),
  Message(
    id: 6,
    senderId: 2,
    recieverId: 3,
    text:
        "Первая карта – 'Солнце'. Это очень позитивная карта, она символизирует радость, успех и гармонию в отношениях.",
    time: "2024-05-24T10:07:00",
    isChecked: true,
  ),
  Message(
    id: 7,
    senderId: 2,
    recieverId: 3,
    text:
        "Вторая карта – 'Луна'. Это карта эмоций и подсознания, она может указывать на скрытые страхи или неясности в ваших отношениях.",
    time: "2024-05-24T10:09:30",
    isChecked: true,
  ),
  Message(
    id: 8,
    senderId: 2,
    recieverId: 3,
    text:
        "Третья карта – 'Звезда'. Она символизирует надежду, вдохновение и долгосрочные перспективы. В сочетании с другими картами это значит, что у вас есть все шансы на светлое будущее вместе.",
    time: "2024-05-24T10:11:15",
    isChecked: true,
  ),
  Message(
    id: 10,
    senderId: 2,
    recieverId: 3,
    text:
        "Всегда рада помочь! Если у вас будут еще вопросы или захотите более детальный расклад, обращайтесь.",
    time: "2024-05-24T10:14:00",
    isChecked: true,
  ),
], sentMessages: [
  Message(
    id: 2,
    senderId: 3,
    recieverId: 2,
    text: "Здравствуйте! Хотела бы узнать, что меня ждет в ближайшем будущем.",
    time: "2024-05-24T10:01:30",
    isChecked: true,
  ),
  Message(
    id: 4,
    senderId: 3,
    recieverId: 2,
    text:
        "Меня больше интересует личная жизнь, особенно отношения с моим партнером.",
    time: "2024-05-24T10:04:00",
    isChecked: true,
  ),
  Message(
    id: 9,
    senderId: 3,
    recieverId: 2,
    text: "Большое спасибо за расклад! Это очень обнадеживает.",
    time: "2024-05-24T10:12:45",
    isChecked: true,
  ),
  Message(
    id: 11,
    senderId: 3,
    recieverId: 2,
    text: "Деньги верни мне за расклад",
    time: "2024-05-25T10:12:45",
    isChecked: true,
  ),
]);

List<Chat> allChats = [
  firstChat,
  secondChat,
];
