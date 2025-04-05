class ArticleModel {
  final String? image, title, subTitle;
  final Country? country;

  const ArticleModel({
    this.country,
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

class Country {
  final String country;

  Country({required this.country});
}
