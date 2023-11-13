class HotelModel {
  String name;
  int stars;
  int price;
  String image;
  var reviewScore;
  String review;
  String adress;
  HotelModel({
    required this.price,
    required this.image,
    required this.reviewScore,
    required this.review,
    required this.adress,
    required this.name,
    required this.stars,
  });
  factory HotelModel.fromJson(Map<String, dynamic> json) {
    return HotelModel(
      name: json['name'] as String,
      stars: json['starts'] as int,
      price: json['price'] as int,
      image: json['image'] as String,
      reviewScore: json["review_score"] as dynamic,
      review: json['review'] as String,
      adress: json['address'] as String,
    );
  }
}
