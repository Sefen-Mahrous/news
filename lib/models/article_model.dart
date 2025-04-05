class ArticleModel {
  final String? image, title, subTitle, link, campanyName;
  final Country? country;

  const ArticleModel({
    this.campanyName,
    this.link,
    this.country,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      campanyName: json['source_id'],
      link: json['link'],
      country: Country(country: json['country'][0]),
      image: json['image_url'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}

class Country {
  final String country;

  Country({required this.country});
}
