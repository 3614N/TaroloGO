//класс карточки таролога

class Service {
  String specialization;
  String serviceName;
  String serviceDescription;
  int price;

  Service({
    required this.specialization,
    required this.serviceName,
    required this.serviceDescription,
    required this.price,
  });
}

class Tarolog {
  String tarotPhoto;
  String tarotFirstName;
  String tarotSecondName;
  String tarotNickname;
  String tarotDescription;
  int reviewCount;
  double rating;
  bool isLiked;
  List<Service> services;

  Tarolog({
    required this.tarotPhoto,
    required this.tarotFirstName,
    required this.tarotSecondName,
    required this.tarotNickname,
    required this.tarotDescription,
    required this.reviewCount,
    required this.rating,
    required this.isLiked,
    required this.services,
  });
}
