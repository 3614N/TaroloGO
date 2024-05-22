import 'package:flutter/material.dart';
import 'package:tarologo/classes/service_class.dart';

//карточки товара

List<ServiceCardClass> serviceCards = [
  ServiceCardClass(
      tarotPhoto: Image.asset('assets/tarot_photos/1.jpg'),
      tarotName: 'Альнура Туманова',
      tarotDescription: 'Гадаю на таро и кофейной гуще. Опыт 5 лет.',
      reviewCount: 1000,
      rating: 4.5,
      isLiked: false),
  ServiceCardClass(
      tarotPhoto: Image.asset('assets/tarot_photos/2.jpg'),
      tarotName: 'Мария Лунария',
      tarotDescription: 'Специалист по картам таро. Опыт 10 лет',
      reviewCount: 850,
      rating: 4.8,
      isLiked: true),
  ServiceCardClass(
      tarotPhoto: Image.asset('assets/tarot_photos/3.jpg'),
      tarotName: 'Елена Звездная',
      tarotDescription: 'Чтение судьбы по картам и звездам. Опыт 7 лет',
      reviewCount: 620,
      rating: 4.7,
      isLiked: false),
  ServiceCardClass(
      tarotPhoto: Image.asset('assets/tarot_photos/4.jpg'),
      tarotName: 'Анна Рунная',
      tarotDescription: 'Предсказания на картах Таро и рунах. Опыт 4 года',
      reviewCount: 500,
      rating: 4.4,
      isLiked: true),
  ServiceCardClass(
      tarotPhoto: Image.asset('assets/tarot_photos/5.jpg'),
      tarotName: 'Ольга Астралия',
      tarotDescription: 'Гадание на таро и астрология. Опыт 6 лет',
      reviewCount: 1100,
      rating: 4.6,
      isLiked: false),
  ServiceCardClass(
      tarotPhoto: Image.asset('assets/tarot_photos/6.jpg'),
      tarotName: 'Ирина Мистерия',
      tarotDescription: 'Эксперт по картам таро. Опыт 8 лет',
      reviewCount: 950,
      rating: 4.9,
      isLiked: true),
  ServiceCardClass(
      tarotPhoto: Image.asset('assets/tarot_photos/7.jpg'),
      tarotName: 'Татьяна Гальдерия',
      tarotDescription: 'Гадание на кофейной гуще и картах Таро. Опыт 3 года',
      reviewCount: 430,
      rating: 4.3,
      isLiked: false),
  ServiceCardClass(
      tarotPhoto: Image.asset('assets/tarot_photos/8.jpg'),
      tarotName: 'Светлана Орлиная',
      tarotDescription: 'Специалист по гаданию на Таро. Опыт 5 лет',
      reviewCount: 780,
      rating: 4.5,
      isLiked: true),
  ServiceCardClass(
      tarotPhoto: Image.asset('assets/tarot_photos/9.jpg'),
      tarotName: 'Виктория Селенит',
      tarotDescription: 'Гадание на картах Таро и астрология. Опыт 9 лет',
      reviewCount: 1200,
      rating: 4.7,
      isLiked: false),
  ServiceCardClass(
      tarotPhoto: Image.asset('assets/tarot_photos/10.jpg'),
      tarotName: 'Наталья Рунесса',
      tarotDescription: 'Предсказания на Таро и рунах. Опыт 6 лет',
      reviewCount: 680,
      rating: 4.6,
      isLiked: true)
];

List<ServiceCardClass> likedServiceCards =
    serviceCards.where((card) => card.isLiked).toList();
