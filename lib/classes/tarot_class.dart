//класс карточки таролога

class Service {
  int id;
  String specialization;
  String serviceName;
  String serviceDescription;
  int price;

  Service({
    required this.id,
    required this.specialization,
    required this.serviceName,
    required this.serviceDescription,
    required this.price,
  });
}

class Tarolog {
  int id;
  String photo;
  String firstName;
  String secondName;
  String username;
  String description;
  int reviewCount;
  double rating;
  bool isLiked;
  List<Service> services;

  Tarolog({
    required this.id,
    required this.photo,
    required this.firstName,
    required this.secondName,
    required this.username,
    required this.description,
    required this.reviewCount,
    required this.rating,
    required this.isLiked,
    required this.services,
  });
}
