import 'package:tarologo/classes/tarot_class.dart';
import 'package:tarologo/test_lists/tarot_services.dart';

List<Tarolog> profiles = [
  Tarolog(
    id: 1,
    photo: 'assets/tarot_photos/1.jpg',
    firstName: 'Альнура',
    secondName: 'Туманова',
    username: '@alnurochka',
    description: 'Предсказания на Таро и рунах. Опыт 6 лет',
    reviewCount: 432,
    rating: 4.5,
    isLiked: false,
    services: [firstEzoGadalka, firstTarotGadalka],
  ),
  Tarolog(
    id: 2,
    photo: 'assets/tarot_photos/2.jpg',
    firstName: 'Мария',
    secondName: 'Лунария',
    username: '@lunaMarry',
    description: 'Гадание на картах Таро и астрология. Опыт 9 лет',
    reviewCount: 346,
    rating: 5.0,
    isLiked: true,
    services: [firstGadalkaGadalka, firstEzoGadalka],
  )
];
